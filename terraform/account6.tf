module "sandbox_dev_008" {
  source = "../modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "venkata.m0414+sandbox-dev8@gmail.com"   # NEW
    AccountName               = "sandbox-Dev-008"                         # NEW
    ManagedOrganizationalUnit = "sandbox"
    SSOUserEmail              = "venkata.m0414+sandbox-dev8@gmail.com"
    SSOUserFirstName          = "dev8"
    SSOUserLastName           = "Userdev8"
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
