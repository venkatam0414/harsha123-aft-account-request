terraform {
  required_version = ">= 1.5.0"
}

module "sandbox_dev_004" {
  source = "../modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "venkata.m0414+sandbox-dev4@gmail.com"
    AccountName               = "sanbox-Dev-004"
    ManagedOrganizationalUnit = "sandbox"
    SSOUserEmail              = "venkata.m0414+sandbox-dev4@gmail.com"
    SSOUserFirstName          = "dev4"
    SSOUserLastName           = "Userdev4"
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
