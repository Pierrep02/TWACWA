python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-CanParl \
 wandb_conf.name=STGCN_ACWA_Can_Linear \
 gpu=0 \
 lr=0.0001 \
 model=STGCN \
 model.evolving=False \
 model.pred_next=False \
 model.clip_grad=False \
 model.link_pred.window=1 \
 model.link_pred.kernel_size=1 \
 model.link_pred.K=2 \
 model.link_pred.normalization=sym \
 model.link_pred.undirected=True \
 optim.optimizer.weight_decay=0 \
 task.engine.epoch=50 \
 task.engine.batch_size=1024 \
 task.engine.n_runs=1 \
 model.link_pred.use_ACWA=True \
 model.link_pred.ACWA_linear=True

python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-CanParl \
 wandb_conf.name=STGCN_ACWA_Can_Ratio \
 gpu=0 \
 lr=0.0001 \
 model=STGCN \
 model.evolving=False \
 model.pred_next=False \
 model.clip_grad=False \
 model.link_pred.window=1 \
 model.link_pred.kernel_size=1 \
 model.link_pred.K=2 \
 model.link_pred.normalization=sym \
 model.link_pred.undirected=True \
 optim.optimizer.weight_decay=0 \
 task.engine.epoch=50 \
 task.engine.batch_size=1024 \
 task.engine.n_runs=1 \
 model.link_pred.use_ACWA=True \
 model.link_pred.ACWA_linear=False

python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-CanParl \
 wandb_conf.name=STGCN_Base_Can \
 gpu=0 \
 lr=0.0001 \
 model=STGCN \
 model.evolving=False \
 model.pred_next=False \
 model.clip_grad=False \
 model.link_pred.window=1 \
 model.link_pred.kernel_size=1 \
 model.link_pred.K=2 \
 model.link_pred.normalization=sym \
 model.link_pred.undirected=True \
 optim.optimizer.weight_decay=0 \
 task.engine.epoch=50 \
 task.engine.batch_size=1024 \
 task.engine.n_runs=1 \
 model.link_pred.use_ACWA=False 