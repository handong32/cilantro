#!/usr/bin/env bash
set -e

CONFIG_PATH=$1

# If CONFIG_PATH is not provided, use the default kubeconfig
if [ -z "$CONFIG_PATH" ]; then
    CONFIG_PATH=~/.kube/config
fi

#kubectl cp $(kubectl get pods --kubeconfig ${CONFIG_PATH} | awk '/cilantroscheduler/ {print $1;exit}'):/cilantro/workdirs ./workdirs_han/ --kubeconfig ${CONFIG_PATH}
#sleep 10
watch -n 600 "kubectl cp $(kubectl get pods --kubeconfig ${CONFIG_PATH} | awk '/cilantroscheduler/ {print $1;exit}'):/cilantro/workdirs ./workdirs_han/ --kubeconfig ${CONFIG_PATH} && wc -l workdirs_han/$(ls -t workdirs_han/ | head -n 1)/hr-client.csv"
echo Results are fetched in workdirs_han
