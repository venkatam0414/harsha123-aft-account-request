terraform {
  required_version = ">= 1.5.0"
}

module "infrastructure_dev_001" {
  source = "../modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "venkata.m0414+infrastructure-dev1@gmail.com"
    AccountName               = "infrastructure-Dev-001"
    ManagedOrganizationalUnit = "infrastructure"
    SSOUserEmail              = "venkata.m0414+infrastructure-dev1@gmail.com"
    SSOUserFirstName          = "infrastructure"
    SSOUserLastName           = "Userinfrastructure"
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
