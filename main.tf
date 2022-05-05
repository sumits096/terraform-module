# module "ix-vm_instance" {
#   source          = "./vm-instance-module"
#   instance_name   = var.instance_name
#   instance_image  = var.instance_image
#   machine_type    = var.machine_type
#   compute_network = var.compute_network
# }

# module "ix-build-trigger" {
#   source = "./build-trigger-module"
# }

module "ix-compute-network" {
  source = "./vpc-network-module"
}
