# for the toy example on terngrad
START=0
SEG_POINT=499
END=999
for i in $(seq ${START} ${SEG_POINT});
  do
  if [ ${i} -le 9 ]
  then
  cp ${HOME}/dataset/cifar10-shard-data/train-0000${i}-of-01000 ${HOME}/dataset/cifar10-data-shard-0-499
  elif [ ${i} -le 99 ]
  then
  cp ${HOME}/dataset/cifar10-shard-data/train-000${i}-of-01000 ${HOME}/dataset/cifar10-data-shard-0-499
  else
  cp ${HOME}/dataset/cifar10-shard-data/train-00${i}-of-01000 ${HOME}/dataset/cifar10-data-shard-0-499
  fi
  done

for i in $(seq 500 ${END});
  do
  cp ${HOME}/dataset/cifar10-shard-data/train-00${i}-of-01000 ${HOME}/dataset/cifar10-data-shard-500-999
  done
