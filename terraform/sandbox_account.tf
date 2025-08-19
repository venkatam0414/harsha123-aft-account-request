terraform {
  required_version = ">= 1.5.0"
}

module "sandbox_dev_001" {
  source  = "aws-ia/control_tower_account_factory//modules/aft-account-request"
  version = ">= 1.12.0"

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
}
