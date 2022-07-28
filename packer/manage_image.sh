#!/usr/bin/env bash

FN="centos-7-base.json"
NN="net"
SN="my-subnet-a"

IMG=$(yc compute image list | grep -v ID | grep centos-7-base  | awk '{print $2}')
if [[ ! -z "${IMG}" ]]; then
   echo "есть образ ${IMG}"
   yc compute image delete ${IMG}
   exit 0
fi

yc vpc network create --name ${NN}
SUB_ID=$(yc vpc subnet create --name ${SN} --zone ru-central1-a --range 10.34.2.0/24 --network-name ${NN}  | grep "^id:" | awk '{print $2}')
yc vpc subnet list
sed -e "s|subnet-id-incert|${SUB_ID}|" ${FN}.sample > ${FN}
#cat ${FN} | grep subnet_id
packer validate ${FN}
packer build ${FN}
yc vpc subnet delete --name ${SN}
yc vpc network delete --name ${NN}
rm -f ./${FN}
yc compute image list
ID=$(yc compute image list | grep -v ID | grep centos-7-base  | awk '{print $2}')
export TF_VAR_centos_7_base="${ID}"
