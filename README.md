# Combining DTDGNN with ACWA for link prediction
![Setup](https://github.com/Pierrep02/TWACWA/blob/main/Experiments.png)

This repository contains a fork of BenchmarkTW updated for python 3.12. The models' embeddings are combined with a random walk-based approach for generating embeddings called ACWA[^1] to see if performances are improved compared to both alone. The repository also has an updated version of CTDNE used for ACWA.[^1] Yang, L., Chatelain, C., and Adam, S. Inductive anomaly detection in dynamic graphs with accumulative causal walk alignment. In Mining and Learning with Graphs Workshop@ ECMLPKDD 2024, 2024.

## Installation 
```
# a python 3.12 environment is recommended
pip install -r requirements.txt
pip install -e .
pip install -e CTDNE
```

## Launch experiments 
First launch the following experiments of STGCN on Enron to ensure everything works: 
```
# in config/wandb_conf/wandb_default.yaml put your wandb info

wandb login
sh scripts/egcn_searchtw_trade.sh
```
After this you can launch any experiments in scripts/ACWA_scripts

## Datasets 
All datasets use in our experiments are in the 'datasets' folder. 

## Notes
A report of metrics of the experiments can be found here https://api.wandb.ai/links/pierrep02-personal/yx3k33u9 <br>
Works on linux and windows (with a windows shell terminal such as Git) <br>
Only STGCN and GCLSTM have been updated to work.
