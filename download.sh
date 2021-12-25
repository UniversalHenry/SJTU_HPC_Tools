#! /bin/bash
# download files
. ./var.sh
sshpass -p $password \
rsync -avzur --progress \
$user@data.hpc.sjtu.edu.cn:$remote_dir \
$local_download_dir 
