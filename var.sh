#! /bin/bash
# variables for shells
# no space beside the "="

password="***"
user="***"
local_upload_dir="***"
local_download_dir="***"
remote_dir="***"
tmux_shell="***" # rsync tmux shell name
rsync_file_list="./tmp/$tmux_shell.txt" # local file to save file list
num_worker=10 # number of workers for download
