
export PROJECT_HOME="$HOME/repo/buildkite_test/terraform/production"

apply_all() {
    cd $PROJECT_HOME
    echo "Y" | terragrunt apply-all
}

destroy_all() {
    cd $PROJECT_HOME
    echo "Y" | terragrunt destroy-all
}