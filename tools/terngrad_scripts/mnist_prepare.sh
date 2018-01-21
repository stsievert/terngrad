TERNGRAD_ROOT=/home/ubuntu/terngrad/terngrad/

cd ${TERNGRAD_ROOT}/slim
# Generate train-mnist.tfrecord and test-mnist.tfrecord
export DATA_PATH="${HOME}/dataset/mnist-data/"
python download_and_convert_data.py --dataset_name mnist --dataset_dir ${DATA_PATH}
