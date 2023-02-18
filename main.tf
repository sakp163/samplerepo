terraform {
  required_version = ">= 1.3.8"
}
 
 provider "aws" {
  region = "us-east-1"
}

locals {
  project_env = "${var.project_id}-${var.environment}"
}
