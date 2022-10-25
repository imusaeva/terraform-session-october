# terraform-session-october

![images](https://user-images.githubusercontent.com/85028974/197703756-9a4a6c29-e2d1-4321-b578-2f901358cf17.png)

## What is Terraform?
Terraform is an infrastructure as code tool that lets you build, change, and version cloud and on-prem resources safely and efficiently.

HashiCorp Terraform is tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share. You can then use a consistent workflow to provision and manage all of your infrastructure throughout its lifecycle. Terraform can manage low-level components like compute, storage, and networking resources, as well as high-level components like DNS entries and SaaS features.
Terraform is an idempotent tool.

## How does Terraform work?
Terraform creates and manages resources on cloud platforms and other services through their application programming interfaces (APIs). 

Terraform works within working directory - folder that containes terraform configuration files.
Terraform files have .tf extensions.

There are 3 important files that terraform reads in order to create and automate resources : 
# providers.tf - provider configuration file
# versions.tf - configuration of your Terraform version and the version of any providers your configuration is using.
# backend.tf - configuration that defines where Terraform stores its state data files.

To execute Terraform file :
```
terraform init
terrfaorm plan
terraform apply
```
# Terraform init 
First command that you always want to run. It is idempotent (run it 1000 times , result stays the same)
It used to initialized working directory containing terraform configuration files. It does 4 things at the background:
- Copy a source model
- Backend initialization
- Child module installation
- Plugin installation (plugin = feature). Terraform has plugin based architecture = has a lot of features.

# Terraform plan 
Creates an execution plan. Whatever you write inside the configuration file it will do a dry run (plan of what will be done with this tasks step by step).
“Dry run” = run playbook but don’t execute tasks , just show what can happen without running the commands .

# Terraform apply
Executes the task



Read [Terraform documentation](https://www.terraform.io/) to learn more
