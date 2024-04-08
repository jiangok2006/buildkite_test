#!/bin/sh

export PROJECT_HOME="$HOME/repo/buildkite_test"

cleanup() {
    folders=( network compute )
    for i in "${folders[@]}" 
    do
        rm -rf "$PROJECT_HOME/terraform/production/$i/.terragrunt-cache"
    done

}

apply_all() {
    cd $PROJECT_HOME
    echo "Y" | terragrunt apply-all
}

destroy_all() {
    cd $PROJECT_HOME
    echo "Y" | terragrunt destroy-all
}