module "vm_instance_1" {
  source          = "./vm-instance-module"
  instance_name   = var.instance_name
  instance_image  = var.instance_image
  machine_type    = var.machine_type
  compute_network = var.compute_network
}


# module "connector_cicd" {
#   source                = "./build-trigger-module"
#   repository_name       = var.repository_name
#   branch_name           = var.branch_name
#   service_account_email = var.service_account_email
#   service_name          = var.service_name
#   region                = var.region
# }
