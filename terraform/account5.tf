terraform {
  required_version = ">= 1.5.0"
}

module "sandbox_dev_006" {  # New module name
  source = "../modules/aft-account-request"
  
  control_tower_parameters = {
    AccountEmail              = "venkata.m0414+sandbox-dev6@gmail.com"  # New email
    AccountName               = "sandbox-Dev-006"
    ManagedOrganizationalUnit = "sandbox"
    SSOUserEmail              = "venkata.m0414+sandbox-dev6@gmail.com"
    SSOUserFirstName          = "dev6"
    SSOUserLastName           = "Userdev6"
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
#
