terraform {
  backend "s3" {
    bucket               = "aws-session-may2022-remote-backend"
    region               = "us-east-1"
    key                  = "terraform.tfstate"
    dynamodb_table       = "terraform-may2022-state-lock-table"
    workspace_key_prefix = "session-11" # argument for non-default workspace
  }
}

# if i switch to dev workspace , my backend will look like  /session-11/dev/terraform.tfstate