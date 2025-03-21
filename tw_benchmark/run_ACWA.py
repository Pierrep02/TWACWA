import hydra
from omegaconf import DictConfig
from omegaconf import OmegaConf
import torch
import numpy as np
from tw_benchmark.getter import Getter
import tw_benchmark.lib as lib
from acwa_lite import process_snapshots

logger = lib.LOGGER
OmegaConf.register_new_resolver("mult", lambda *numbers: float(np.prod([float(x) for x in numbers])))
OmegaConf.register_new_resolver("sum", lambda *numbers: sum(map(float, numbers)))
OmegaConf.register_new_resolver("sub", lambda x, y: float(x) - float(y))
OmegaConf.register_new_resolver("div", lambda x, y: float(x) / float(y))

@hydra.main(config_path="config", config_name="default",version_base="1.3")
def run(config: DictConfig):
    getter = Getter(config)
    torch.set_printoptions(sci_mode=False) # Disable scientific notation
    device = torch.device("cuda:"+str(config.gpu) if torch.cuda.is_available() else "cpu")
    
    
    # """""""""""" Create dataset """"""""""""""
    dataset = getter.get_dataset()
    print(dataset)
    # """""""""""" Get/Process snapshots """"""""""""""
    try :
        acwa_embeddings = np.load(f"acwa16/{config.dataset.name}_sd42.npy")
    except FileNotFoundError:
        logger.info("Processing snapshots") 
        _,_,_,list_dg = dataset["link_pred"].construct_graph_snapshot()
        print(len(list_dg), len(list_dg[0]), list_dg[0].shape)
        list_dg = [list_dg[i][:, 0:2] for i in range(len(list_dg))]
        process_snapshots(list_dg, dataset["link_pred"].n_nodes, 16, config.dataset.name, 42)
        acwa_embeddings = np.load(f"acwa16/{config.dataset.name}_sd42.npy")

    # """""""""""" Create model """"""""""""""
    model = getter.get_model()
    model = model[config.task_name] # Get the right model for the task
    # """""""""""" Create loss """"""""""""""
    criterion = getter.get_loss()

    # """""""""""" Create optimizer """"""""""""""
    optimizer = getter.get_optimizer(model)

    # """""""""""" Create engine """"""""""""""
    
    if config.task_name == 'node_reg':
        from tw_benchmark.engine import EngineReg as Engine
        logger.info("Node Regression task")
        dts = dataset[config.task_name]
        
        
    elif config.task_name == 'link_pred':
        from tw_benchmark.engine import EngineLinkPred as Engine
        logger.info("Link Prediction task")
        dts = dataset[config.task_name]
    else:
        logger.error(config.task_name+" not implemented")
        
    # """""""""""" Run engine """"""""""""""
    engine_task = Engine(config,
                        model,
                        criterion,
                        optimizer,
                        device,
                        dts,
                        logger,
                        acwa_embeddings
                        )

    return engine_task.run()



if __name__ == "__main__":

    run()