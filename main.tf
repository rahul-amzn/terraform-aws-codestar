data "aws_caller_identity" "current" {}

## Create CodeStar Host
resource "aws_codestarconnections_host" "sample-host" {
  name              = var.host_connection_name
  provider_endpoint = var.provider_endpoint
  provider_type     = var.provider_type
}

## Create CodeStar Connection
resource "aws_codestarconnections_connection" "sample-connection" {
  name          =   var.codestar_connection_name
  host_arn      =   aws_codestarconnections_host.sample-host.arn
}

