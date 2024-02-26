# python -m torch.distributed.launch --nnodes=1 --node_rank=0 --nproc_per_node=1 --master_addr="127.0.0.1" --master_port=29501 main.py --cfg configs/vssm/vssm_small_224.yaml --batch-size 16 --data-path /home/csc/food_data/CNFOOD-241 --pretrained /home/csc/VMamba/classification/pretrained/vmamba_small_e238_ema.pth  --output /tmp
# python -m torch.distributed.launch --nnodes=1 --node_rank=0 --nproc_per_node=1 --master_addr="127.0.0.1" --master_port=29501 main.py --cfg configs/vssm/vssm_small_224.yaml --batch-size 16 --data-path /home/csc/food_data/CNFOOD-241 --pretrained /home/csc/VMamba/classification/pretrained/ckpt_epoch_29.pth  --output /home/csc/VMamba/classification/result
#python3 -m torch.distributed.launch --nnodes=1 --node_rank=0 --nproc_per_node=1 --master_addr="127.0.0.1" --master_port=29501 main.py --cfg configs/vssm/vssm_small_224.yaml --batch-size 128 --data-path /home/public_3T/food_data/CNFOOD-241 --pretrained ./res_vmamba_cnf241_result_2/vssm_small/default/ckpt_epoch_12.pth  --output ./res_vmamba_cnf241_result_3

#python3 -m torch.distributed.launch --nnodes=1 --node_rank=0 --nproc_per_node=1 --master_addr="127.0.0.1" --master_port=29501 main.py --cfg configs/vssm/vssm_small_224.yaml --batch-size 128 --data-path /home/public_3T/food_data/CNFOOD-241 --pretrained ./res_vmamba_cnf241_result_2/vssm_small/default/ckpt_epoch_12.pth  --output ./res_vmamba_cnf241_result_best

#imagenet-1k pretrain
#python3 -m torch.distributed.launch --nnodes=1 --node_rank=0 --nproc_per_node=1 --master_addr="127.0.0.1" --master_port=29501 main.py --cfg configs/vssm/vssm_small_224.yaml --batch-size 128 --data-path /home/public_3T/imagenet1k/ILSVRC/Data/CLS-LOC  --output ./res_vmamba_cnf241_result_pretrained

#vmamba no pretrained weight
#python3 -m torch.distributed.launch --nnodes=1 --node_rank=0 --nproc_per_node=1 --master_addr="127.0.0.1" --master_port=29501 main.py --cfg configs/vssm/vssm_small_224.yaml --batch-size 128 --data-path /home/public_3T/food_data/CNFOOD-241  --output ./vmamba_cnf241_result_no_pretrained_weight


python3 -m torch.distributed.launch --nnodes=1 --node_rank=0 --nproc_per_node=1 --master_addr="127.0.0.1" --master_port=29501 main.py --cfg configs/vssm/vssm_small_224.yaml --batch-size 128 --data-path /home/public_3T/food_data/CNFOOD-241  --output ./res_vmamba_cnf241_no_pw_best
