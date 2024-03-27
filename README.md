# ResVMamba
[![PWC](https://img.shields.io/endpoint.svg?url=https://paperswithcode.com/badge/res-vmamba-fine-grained-food-category-visual/fine-grained-image-recognition-on-cnfood-241)](https://paperswithcode.com/sota/fine-grained-image-recognition-on-cnfood-241?p=res-vmamba-fine-grained-food-category-visual)  
[![Hugging Face Spaces](https://img.shields.io/badge/%F0%9F%A4%97%20Hugging%20Face-Spaces-blue)]([https://huggingface.co/ms57rd/Res-VMamba]) ![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-green) ![Stars](https://img.shields.io/github/stars/ChiShengChen/ResVMamba)



The official repository of [Res-VMamba: Fine-Grained Food Category Visual Classification Using Selective State Space Models with Deep Residual Learning](https://arxiv.org/abs/2402.15761) , the most part of code is modified from [VMamba](https://github.com/MzeroMiko/VMamba) .  

 <img src="https://github.com/ChiShengChen/ResVMamba/blob/main/imgs/cnfood-241-report-new.jpg?raw=true"> 


## Get started
Please follw the installation flow on [VMamba](https://github.com/MzeroMiko/VMamba) , and rename and replace the `resvmamba.py` in this repo to the `vmemba.py` in `models` folder.

### Pretrained-weight
The Res-VMamba model best weight with VMamba-S as backbone trained on CNFOOD-241-Chen (CNFOOD-241 dataset with the random split in the paper) can be available on the [HuggingFace](https://huggingface.co/ms57rd/Res-VMamba) .  
The downloaded weight need to put under the folder path:   
`./ResVMamba/pretrained_model/vssm_small/default/ckpt_epoch_166.pth`  

### Run Command
For has only 1 GPU card:  
```
python3 -m torch.distributed.launch --nnodes=1 --node_rank=0 --nproc_per_node=1 --master_addr="127.0.0.1" --master_port=29501 main.py --cfg configs/vssm/vssm_small_224.yaml --batch-size 16 --data-path <Your_data_path>/food_data/CNFOOD-241   --output ./ResVMamba/pretrained_model
```

## CNFOOD-241-Chen dataset
<img src="https://github.com/ChiShengChen/ResVMamba/blob/main/imgs/dataset_split.png?raw=true"  height="256">  

The image list can be found in `CNFOOD241_data_split` folder.

## Training Result on paper
![Screenshot from 2024-03-27 01-20-07](https://github.com/ChiShengChen/ResVMamba/assets/22126443/653d4086-b227-4bbe-953d-72f1a928edc3)


## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=ChiShengChen/ResVMamba&type=Date)](https://star-history.com/#ChiShengChen/ResVMamba&Date)  

## Reference
The original CNFOOD-241 data: https://data.mendeley.com/datasets/fspyss5zbb/1  

## Citation
Hope this code is helpful. I would appreciate you citing us in your paper. 😊
```
@misc{chen2024resvmamba,
  title = {Res-VMamba: Fine-Grained Food Category Visual Classification Using Selective State Space Models with Deep Residual Learning},
  author = {Chen, Chi-Sheng and Chen, Guan-Ying and Zhou, Dong and Jiang, Di and Chen, Dai-Shi},
  year = {2024},
  month = Feb,
  number = {arXiv:2402.15761},
  eprint = {2402.15761},
  primaryclass = {cs, eess, cv},
  publisher = {{arXiv}},
  doi = {10.48550/arXiv.2402.15761},
  archiveprefix = {arxiv}
}
```
