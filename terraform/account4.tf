terraform {
  required_version = ">= 1.5.0"
}

module "sandbox_dev_005" {  # New module name
  source = "../modules/aft-account-request"
  
  control_tower_parameters = {
    AccountEmail              = "venkata.m0414+sandbox-dev5@gmail.com"  # New email
    AccountName               = "sandbox-Dev-005"
    ManagedOrganizationalUnit = "sandbox"
    SSOUserEmail              = "venkata.m0414+sandbox-dev5@gmail.com"
    SSOUserFirstName          = "dev5"
    SSOUserLastName           = "Userdev5"
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
