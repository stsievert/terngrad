TERNGRAD_ROOT=/home/ubuntu/terngrad

cd ${TERNGRAD_ROOT}/slim
# Generate train-cifar10.tfrecord and test-cifar10.tfrecord
export DATA_PATH="${HOME}/dataset/cifar10-data/" # the directory of database
python download_and_convert_data.py --dataset_name cifar10 --dataset_dir ${DATA_PATH}

# Instead of putting all training examples in one tfrecord file, we can split them by enabling --shard
# This is useful for distributed training by date parallelsim, where we should split data across nodes
# Generate train-xxxxx-of-xxxxx (1000 shards in default) and test-00000-of-00001 tfrecord shards
export DATA_PATH="${HOME}/dataset/cifar10-shard-data/" # the directory of database
python download_and_convert_data.py \
--dataset_name cifar10 \
--dataset_dir ${DATA_PATH} \
--shard True
