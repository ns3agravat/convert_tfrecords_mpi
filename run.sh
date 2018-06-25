clear
rm ~/images/*.tfrecord
time mpirun -np $1 -hostfile ~/hostfile.txt python master_worker.py -dataset_dir=/home/agravat/images --tfrecord_filename=clouds --num_shards=$2
