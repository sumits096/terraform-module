service_account_credentials = ""
project_name                = "studied-client-346013"
region                      = "global"
zone                        = "us-central1-a"
service_account_name        = "23130737730-compute"
service_account_email       = "23130737730-compute@developer.gserviceaccount.com"
service_name                = "gcp-cloud-run-service"
instance_name               = "ix-vm-machine"
instance_image              = "debian-cloud/debian-9"
machine_type                = "f1-micro"
compute_network             = "ix-vm-network"
repository_name             = "terraform-module"
branch_name                 = "main"
image_name                  = "connector"


#----------------------------------------------
# CI/CD Build variables
#----------------------------------------------
build_trigger_name        = "connector_cicd"
build_trigger_description = "Trigger build on changes terraform"
build_trigger_status      = false
build_trigger_filename    = "connector/workflow/cloudbuild-prod.yaml"
github_owner              = "sumits096"
github_repo_name          = "connector-gcp-test"
github_branch_name        = "^main$"
