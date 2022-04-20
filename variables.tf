variable "service_account_credentials" {
  description = "Service account email Id."
  type = object({
    name = a
  })
  default = "terraform-deployment-demo-sa@terraform-deployment-demo.iam.gserviceaccount.com"
}

variable "project_name" {}

variable "region" {}

variable "zone" {}

variable "service_account_name" {}

variable "service_account_email" {}

variable "service_name" {}

variable "repository_name" {}

variable "branch_name" {}

variable "image_name" {}
