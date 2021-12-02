provider "aws" {
    region = "ap-northeast-1"
}

terraform {
    backend "s3" {}
}

module "app" {
    source = "../../../app"
    instance_type = var.instance_type
    instance_count = var.instance_count
}

