// harsha123-aft-account-request/terraform/sandbox_account.tf

terraform {
  required_version = ">= 1.5.0"
}

// One account request = one module block
module "sandbox_dev_001" {
  // Pin to a recent AFT release
  source = "github.com/aws-ia/terraform-aws-control_tower_account_factory//modules/aft-account-request?ref=v1.15.1"

  control_tower_parameters = {
    AccountEmail               = "venkata.m0414+sandbox-dev@gmail.com"  // must be unique in AWS
    AccountName                = "Sandbox-Dev-001"
    ManagedOrganizationalUnit  = "Sandbox"   // must match your existing OU name exactly
    SSOUserEmail               = "venkata.m0414+admin@gmail.com"
    SSOUserFirstName           = "Admin"
    SSOUserLastName            = "User"
  }

  account_tags = {
    Owner       = "Harsha"
    Environment = "Dev"
    CostCenter  = "1234"
  }
}
