Session - 6 contains a terraform code that  creates  SQS service for infrastructure
![download](https://user-images.githubusercontent.com/85028974/197710253-e69c602c-1706-4360-bc43-705aa113f854.png)

# What is SQS? 
 - Amazon Simple Queue Service (SQS) lets you send, store, and receive messages between software components at any volume, without losing messages or requiring other services to be available.
Use cases: 
* Increase application reliability and scale
Amazon SQS provides a simple and reliable way for customers to decouple and connect components (microservices) together using queues.
* Decouple microservices and process event-driven applications
Separate frontend from backend systems, such as in a banking application. Customers immediately get a response, but the bill payments are processed in the background.
* Ensure work is completed cost-effectively and on time
Place work in a single queue where multiple workers in an autoscale group scale up and down based on workload and latency requirements.
* Maintain message ordering with deduplication
Process messages at high scale while maintaining the message order, allowing you to deduplicate messages.

# Steps:
1. Create terraform configuration  files: versions.tf , providers.tf , backend.tf
2. Run a code to create SQS
3. Now we want to create sqs for multiple environment : dev , qa , prod 

* Idea of using terraform is to manage multiple environments using the same working code.
Each environment should has it’s .tfstate file. 

To manage multiple environment we need to change configuration inside the backend file. Key will be changed from dev to qa .. Manually or by having a script that will run and change the environment in backend file.
Note: we always have to be super careful with the backend file because if we mess up something inside , we will loose the whole control of the infrastructure.

Its impossible to use variables in .tfstate files. Only workspace will work with variables!
But we don’t use workspace now.. 

# There are two ways to manage multiple environment with terraform :
1. FileStructure - manage all environments in one working directory which  makes it easier to maintain your environments.

It is always better to deal with one than 4 working directory
We have to create tfvars files with variables for environment and run terraform apply command with a proper flag , example : 
```
terraform apply -var-file=dev.tfvars
```
2. FolderStructure - each environment has it's own working directory with all configuration files.

If we are managing multiple environment with Folder Structure , we have to have 4 different working directories for each environment ( with all the configuration files to each environment). 
And run terraform init after modification the environment in each working directory. You technically have to go and do copy/paste to every other environment after changes. 
You have to be extra careful with file syntax … because single mistake will cause an error.




More about terraform [Terraform Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
