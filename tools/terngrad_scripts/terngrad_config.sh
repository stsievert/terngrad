TERNGRAD_ROOT=${HOME}/terngrad
SCRIPT_DIR=${HOME}/terngrad/tools/terngrad_scripts

# build all
echo "building terngrad ..."
cd ${TERNGRAD_ROOT}/terngrad
./build_all.sh

# prepare cifar10 dataset
echo "download and preprocessing cifar10 dataset ..."
bash ${HOME}/terngrad_scripts/cifar10_prepare.sh
