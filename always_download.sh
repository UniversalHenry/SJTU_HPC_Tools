#! /bin/bash
# always download files
. ./var.sh
mkdir ./tmp
while true
do
    sshpass -p $password \
    ssh $user@data.hpc.sjtu.edu.cn ls $remote_dir > $rsync_file_list
    cat $rsync_file_list | xargs --max-args=1 --max-procs=$num_worker --replace=% \
    sshpass -p $password \
    rsync -avzur --progress --partial \
    $user@data.hpc.sjtu.edu.cn:$remote_dir% $local_download_dir
done