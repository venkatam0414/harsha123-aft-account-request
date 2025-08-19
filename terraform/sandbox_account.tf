terraform {
  required_version = ">= 1.5.0"
}

module "sandbox_dev_001" {
  source  = "aws-ia/control_tower_account_factory/aws//modules/aft-account-request-framework"
  version = "~> 1.15.0"

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
