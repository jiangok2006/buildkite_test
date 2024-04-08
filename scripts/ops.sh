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
    cleanup # required for "Changes to backend configurations require reinitialization"
    echo "Y" | terragrunt run-all apply
}

destroy_all() {
    cd $PROJECT_HOME
    echo "Y" | terragrunt run-all destroy
}