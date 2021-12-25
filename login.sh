#! /bin/bash
# login
. ./var.sh
sshpass -p $password \
ssh -p 22 $user@login.hpc.sjtu.edu.cn
