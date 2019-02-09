#!/bin/bash

set -e

volume_ssh_ouside=${HOME}/.ssh
volume_aws_outside=${HOME}/.aws
volume_bridgy_outside=${HOME}/bridgy

volume_ssh_inside="/home/bridgy/.ssh"
volume_aws_inside="/home/bridgy/.aws"
volume_bridgy_inside="/home/bridgy/.bridgy"



if [ $# -eq 0 ]
    then
        base_command="docker run -it -v ${volume_ssh_ouside}:${volume_ssh_inside} \
                -v ${volume_bridgy_outside}:${volume_bridgy_inside} \
                -v ${volume_aws_outside}:${volume_aws_inside} \
                quay.io/nicolinocuralli/bridgy"
    else
        base_command="docker run -it -v ${volume_ssh_ouside}:${volume_ssh_inside} \
                -v ${volume_bridgy_outside}:${volume_bridgy_inside} \
                -v ${volume_aws_outside}:${volume_aws_inside} \
                quay.io/nicolinocuralli/bridgy bridgy"
fi

command="$base_command"" "
command+="$@"
eval "$command"


