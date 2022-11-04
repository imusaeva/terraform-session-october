- Session-11 is for creating Amazon SQS for multiple Environments with Workspace

![terraform_workspaces](https://user-images.githubusercontent.com/85028974/199896835-0847e822-602b-4546-b523-d4e1c8d23a8a.png)

## WorkSpace - makes it easier to manage resources in multiple environments. 
To use Workspace we need to add an argument in backend.tf file ``` workspace_key_prefix = "sesssion-11" ``` and specify needed workspace .

To check available options for workspace run : ``` terraform workspace ```

 - to list  workspace : ``` terraform workspace list ``` , by default we are using default workspace. * - means current workspace.
 - to create workspace : ``` terraform workspace new theNameOfYourWorkspaceEnvironment ```
 - to switch to another workspace : ``` terraform workspace select theNameOfYourWorkspaceEnvironment ```
 - to delete workspace : ``` terraform workspace delete theNameOfYourWorkspaceEnvironment ``` , note : before you delete the workspace you have to delete resources that you have created in this workspace.

Each workspace = 1 backend file.

Every time you run terraform init and terraform apply in each environment (workspace) , it will create a separate tfstate file for each environment.  

**Note:**
- it is very important to be at the same working directory in your terminal before switching the workspace. If you are not in the needed working directory it will be assuming default workspace.

- Example of ``` backend.tf ``` : 
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
**Now we know 4 different ways to manage multiple environments :**
- modules , 
- workspace , 
- file structure , 
- folder structure.

When we create resource , for the name we give workspace option and it will automatically update the name for each environment.

 - Example :
```
resource "aws_sqs_queue" "main" {
  name = "${terraform.workspace}-sqs”            # name will be updated after the terraform apply
}
```
The architechture of workspace created by my teacher Kris Khuslen :) 
<img width="715" alt="Screen Shot 2022-11-04 at 12 25 09 AM" src="https://user-images.githubusercontent.com/85028974/199897385-b8eb84c5-50a5-4f76-ac7f-57c1b333277d.png">



