module "vm_instance_1" {
  source     = "/vm-instance-module"
  gcp_region = var.gcp_region
}


module "connector_cicd_build_trigger" {
  source                = "/build-trigger-module"
  repository_name       = var.repository_name
  branch_name           = var.branch_name
  service_account_email = var.service_account_email
  service_name          = var.service_name
  region                = var.region
}
