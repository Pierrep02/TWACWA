python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-AS733 \
 wandb_conf.name=ACWA_AS \
 model=ACWA \
 gpu=0 \
 model.evolving=False \
 task.engine.epoch=1 \
 task.engine.batch_size=1024 \
 task.engine.n_runs=1 \

python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-USLegis \
 wandb_conf.name=ACWA_Legis \
 model=ACWA \
 gpu=0 \
 model.evolving=False \
 task.engine.epoch=1 \
 task.engine.batch_size=1024 \
 task.engine.n_runs=1 \

python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-CanParl \
 wandb_conf.name=ACWA_Can \
 model=ACWA \
 gpu=0 \
 model.evolving=False \
 task.engine.epoch=1 \
 task.engine.batch_size=1024 \
 task.engine.n_runs=1 \

python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-Colab \
 wandb_conf.name=ACWA_Colab \
 model=ACWA \
 gpu=0 \
 model.evolving=False \
 task.engine.epoch=1 \
 task.engine.batch_size=1024 \
 task.engine.n_runs=1 

python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-Bitcoin-OTC \
 wandb_conf.name=ACWA_Bit_OTC \
 model=ACWA \
 gpu=0 \
 model.evolving=False \
 task.engine.epoch=1 \
 task.engine.batch_size=1024 \
 task.engine.n_runs=1 \

python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-UNvote \
 wandb_conf.name=ACWA_UNVote \
 model=ACWA \
 gpu=0 \
 model.evolving=False \
 task.engine.epoch=1 \
 task.engine.batch_size=1024 \
 task.engine.n_runs=1 \

python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-UCI-Message \
 wandb_conf.name=ACWA_UCI_Message \
 model=ACWA \
 gpu=0 \
 model.evolving=False \
 task.engine.epoch=1 \
 task.engine.batch_size=1024 \
 task.engine.n_runs=1 \

python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-Bitcoin-Alpha \
 wandb_conf.name=ACWA_Bit_Alpha \
 model=ACWA \
 gpu=0 \
 model.evolving=False \
 task.engine.epoch=1 \
 task.engine.batch_size=1024 \
 task.engine.n_runs=1 \

python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-Enron \
 wandb_conf.name=ACWA_Enron \
 model=ACWA \
 gpu=0 \
 model.evolving=False \
 task.engine.epoch=1 \
 task.engine.batch_size=1024 \
 task.engine.n_runs=1 \

python tw_benchmark/run_ACWA.py \
 --multirun \
 dataset=DGB-UNtrade \
 wandb_conf.name=ACWA_UNtrade \
 model=ACWA \
 gpu=0 \
 model.evolving=False \
 task.engine.epoch=1 \
 task.engine.batch_size=1024 \
 task.engine.n_runs=1 \
