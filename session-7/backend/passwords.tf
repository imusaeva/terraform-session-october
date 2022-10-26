resource "random_password" "db_password" {
  length           = 16
  special          = true
  override_special = "%" # Terraform way to generate password , you can not see it but can check it
}