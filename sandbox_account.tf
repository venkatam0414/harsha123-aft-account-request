resource "aws_aft_account_request" "sandbox" {
  # Required
  account_name             = "Sandbox-Dev"
  email                    = "sandbox-dev+aws@yourdomain.com"
  organizational_unit_name = "Workloads"   # or Infrastructure / Data, etc.
  sso_email                = "sandbox-dev+aws@yourdomain.com"
  sso_first_name           = "Sandbox"
  sso_last_name            = "User"

  # Optional settings
  account_id               = "" # leave blank for NEW account
  managed_organizational_unit = "Workloads"

  # Tags (flow to AWS)
  tags = {
    Owner       = "Harsha"
    Environment = "Dev"
    CostCenter  = "1234"
  }
}
