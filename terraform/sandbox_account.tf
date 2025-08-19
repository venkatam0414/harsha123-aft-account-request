terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Provider for the current region (where AFT is running)
provider "aws" {
  region = var.ct_management_region
}

# Provider for Control Tower management account
provider "aws" {
  alias  = "ct_management"
  region = var.ct_management_region
  
  assume_role {
    role_arn     = "arn:aws:iam::${var.ct_management_account_id}:role/AWSControlTowerExecution"
    session_name = "AFT-Account-Request"
  }
}

# Variables
variable "ct_management_region" {
  description = "Control Tower management region"
  type        = string
  default     = "us-east-2" 
}

variable "ct_management_account_id" {
  description = "Control Tower management account ID"
  type        = string
  default     = "221082206963"  # Notice the quotes around the number
}

module "sandbox_dev_001" {
  source  = "aws-ia/control_tower_account_factory/aws//modules/aft-account-request-framework"
  version = "~> 1.15.0"

  providers = {
    aws.ct_management = aws.ct_management
  }

  control_tower_parameters = {
    AccountEmail              = "venkata.m0414+sandbox-dev@gmail.com"
    AccountName               = "Sandbox-Dev-001"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "venkata.m0414+admin@gmail.com"
    SSOUserFirstName          = "Admin"
    SSOUserLastName           = "User"
  }

  account_tags = {
    Owner       = "Harsha"
    Environment = "Dev"
    CostCenter  = "1234"
  }

  change_management_parameters = {
    change_requested_by = "Harsha"
    change_reason       = "Testing sandbox account creation"
  }
}
