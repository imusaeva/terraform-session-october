data "terraform_remote_state" "db" {
  backend = "s3"
  config = {
    bucket = "aws-session-may2022-remote-backend"
    region = "us-east-1"
    key    = "session-7/backend/terraform.tfstate"
  }
}