python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-AS733 \
 wandb_conf.name=GCLSTM_ACWA_AS_Linear \
 gpu=0 \
 lr=0.01 \
 task.engine.batch_size=1024 \
 model=GCLSTM \
 model.evolving=False \
 model.clip_grad=True \
 model.pred_next=False \
 model.link_pred.K=2 \
 model.link_pred.time_length=1 \
 model.link_pred.normalization=sym \
 model.link_pred.bias=False \
 model.link_pred.undirected=True \
 optim.optimizer.weight_decay=0 \
 task.engine.n_runs=1 \
 task.engine.epoch=100 \
 model.link_pred.use_ACWA=True \
 model.link_pred.ACWA_linear=True

python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-AS733 \
 wandb_conf.name=GCLSTM_ACWA_AS_Ratio \
 gpu=0 \
 lr=0.01 \
 task.engine.batch_size=1024 \
 model=GCLSTM \
 model.evolving=False \
 model.clip_grad=True \
 model.pred_next=False \
 model.link_pred.K=2 \
 model.link_pred.time_length=1 \
 model.link_pred.normalization=sym \
 model.link_pred.bias=False \
 model.link_pred.undirected=True \
 optim.optimizer.weight_decay=0 \
 task.engine.n_runs=1 \
 task.engine.epoch=100 \
 model.link_pred.use_ACWA=True \
 model.link_pred.ACWA_linear=False

python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-AS733 \
 wandb_conf.name=GCLSTM_Base_AS \
 gpu=0 \
 lr=0.01 \
 task.engine.batch_size=1024 \
 model=GCLSTM \
 model.evolving=False \
 model.clip_grad=True \
 model.pred_next=False \
 model.link_pred.K=2 \
 model.link_pred.time_length=1 \
 model.link_pred.normalization=sym \
 model.link_pred.bias=False \
 model.link_pred.undirected=True \
 optim.optimizer.weight_decay=0 \
 task.engine.n_runs=1 \
 task.engine.epoch=100 \
 model.link_pred.use_ACWA=False 