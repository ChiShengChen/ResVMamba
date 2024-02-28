# ResVMamba
[![PWC](https://img.shields.io/endpoint.svg?url=https://paperswithcode.com/badge/res-vmamba-fine-grained-food-category-visual/fine-grained-image-recognition-on-cnfood-241)](https://paperswithcode.com/sota/fine-grained-image-recognition-on-cnfood-241?p=res-vmamba-fine-grained-food-category-visual)  
[![Hugging Face Spaces](https://img.shields.io/badge/%F0%9F%A4%97%20Hugging%20Face-Spaces-blue)]([https://huggingface.co/ms57rd/Res-VMamba]) ![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-green) ![Stars](https://img.shields.io/github/stars/ms57rd/Res-VMamba)

The official repo of [Res-VMamba: Fine-Grained Food Category Visual Classification Using Selective State Space Models with Deep Residual Learning](https://arxiv.org/abs/2402.15761) , the most part of code is modified from [VMamba](https://github.com/MzeroMiko/VMamba) .  

 <img src="https://github.com/ChiShengChen/ResVMamba/blob/main/imgs/cnfood-241-report-new.jpg?raw=true"> 


## Get started
Please follw the installation flow on [VMamba](https://github.com/MzeroMiko/VMamba) , and rename and replace the `resvmamba.py` in this repo to the `vmemba.py` in `models` folder.

## Pretrained-weight
The Res-VMamba model best weight with VMamba-S as backbone trained on CNFOOD-241-Chen (CNFOOD-241 dataset with the random split in the paper) can be available on the [HuggingFace](https://huggingface.co/ms57rd/Res-VMamba) .

## CNFOOD-241-Chen dataset
<img src="https://github.com/ChiShengChen/ResVMamba/blob/main/imgs/dataset_split.png?raw=true"  height="256">  

The image list can be found in `CNFOOD241_data_split` folder, and the data file can be available on [here](https://huggingface.co/datasets/ms57rd/CNFOOD-241-Chen).

## Reference
The original CNFOOD-241 data: https://data.mendeley.com/datasets/fspyss5zbb/1  
