In Session-7 we created 2 subfolders for backend (RDS Database) and frontend (SQS)
Each working directory has 3 important terraform configuraion files:
```
providers.tf
versions.tf
backend.tf
```

![download](https://user-images.githubusercontent.com/85028974/198361140-b0cbb011-c624-4c16-9fcc-d8c5a195a443.png)

* Amazon Relational Database - is a distributed relational database service by AWS.
It is a web service running "in the cloud" designed to simplify the setup, operation, and scaling of a relational database for use in applications.

In RDS backend file we used Conditional Expressions.
# Conditional Expressions -  uses the value of a boolean expression to select one of two values.
The syntax of a conditional expression:
```
condition ? true_val : false_val
```
* If condition is true then the result is true_val
* If condition is false then the result is false_val

* In frontend working directory we created SQS for multiple environment and were using Naming & Tagging standards.
Local is used for something that's repeated over and over again
Warning : Do not overuse Locals.tf. 
It will make code complicated

# 1. Naming Standard
# 2. Tagging Standard / Common Tags


* Naming Standard :
```
aws-ue1-nonprod-dev-cat-${resource_name}
```

# aws = cloud provider
# ue1 = region
# nonprod = Account
# dev = Environment
# cat = project
# ${resource_name} = asg, alb, route53, rds,etc

* Tagging Standard / Common Tags:
```
common_tags + name tag should has every single resource
```
Syntax for locals.tf :
```locals {
  name = "aws-${var.region}-${var.stage}-${var.env}-${var.project}-rtype"
  common_tags = {
    env     = var.env
    project = var.project
    team    = "DevOps"
    owner   = "Irina"
  }
}
```
In the main.tf file we merge Naming Standard and Tagging Standard using " merge" option.
