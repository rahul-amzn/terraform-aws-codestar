## Defaults
provider "aws" {
  region = var.region
}

terraform {
  required_version = ">= 1.0.0"
  backend "remote" {}
}

## Create Labels
module "quickstart_codestar_label" {
  source    = "aws-quickstart/label/aws"
  version   = "0.0.2"
  region    = var.region
  namespace = var.namespace
  env       = var.environment
  account   = var.account
  name      = var.project_name
  delimiter = var.delimiter
  tags = tomap({
    "deployed_by" = "quickstart-terraform"
    "project"     = var.project_name
  })
}

## Create CodeStar Resources
module "qs_codestar" {
  source                    = "../"
  host_connection_name      = var.host_connection_name
  provider_endpoint         = var.provider_endpoint
  provider_type             = var.provider_type
  codestar_connection_name  = var.codestar_connection_name
}