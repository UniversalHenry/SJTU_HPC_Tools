#! /bin/bash
# upload files
. ./var.sh
sshpass -p $password \
rsync -avzur --progress $local_upload_dir \
$user@data.hpc.sjtu.edu.cn:$remote_dir
