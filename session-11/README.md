- Session-11 is for creating Amazon SQS for multiple Environments with Workspace

* WorkSpace - makes it easier to manage multiple resources in different environments. 
To use Workspace we need to add an argument in backend.tf file ``` workspace_key_prefix = "sesssion-11" ``` and specify needed workspace .

To check available options for workspace run : ``` terraform workspace ```

 - to list  workspace : ``` terraform workspace list ``` , by default we are using default workspace. * - means current workspace.
 - to create workspace : ``` terraform workspace new theNameOfYourWorkspaceEnvironment ```
 - to switch to another workspace : ``` terraform workspace select theNameOfYourWorkspaceEnvironment ```
 - to delete workspace : ``` terraform workspace delete theNameOfYourWorkspaceEnvironment ``` , note : before you delete the workspace you have to delete resources that you have created in this workspace.

Each workspace = 1 backend file.

Every time you run terraform init and terraform apply in each environment (workspace) , it will create a separate tfstate file for each environment.  

*** Note:
- it is very important to be at the same working directory in your terminal before switching the workspace. If you are not in the needed working directory it will be assuming default workspace.

example of ``` backend.tf ``` : 
```
terraform {
  backend "s3" {
    bucket   = "aws-session-may2022-remote-backend"     # bucket
    region   = "us-east-1"
    key      = "terraform.tfstate"                      # for the key we not specify the environment 
    dynamodb_table = "terraform-may2022-state-lock-table"
    workspace_key_prefix = "session-11"                 #argument for non-default workspace 
  }
}
```
*** Now we know 4 different ways tomanage multiple environments : 
- modules , 
- workspace , 
- file structure , 
- folder structure.

When we create resource , for the name we give workspace option and it will automatically update the name for each environment , 
example :
```
resource "aws_sqs_queue" "main" {
  name = "${terraform.workspace}-sqs”            # name will be updated after the terraform apply
}
```




