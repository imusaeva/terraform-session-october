In Session-7 we created 2 subfolders for backend (RDS Database) and frontend (SQS)
Each working directory has 3 important terraform configuraion files:
```
providers.tf
versions.tf
backend.tf
```

![1_KqNnfYtaVshGXbuGUCTOQw](https://user-images.githubusercontent.com/85028974/198358920-7282333b-c9fc-42a0-b4c0-c897595184c2.png)
# RDS Database

Amazon Relational Database - is a distributed relational database service by AWS.
It is a web service running "in the cloud" designed to simplify the setup, operation, and scaling of a relational database for use in applications.

In RDS backend file we used Conditional Expressions.
# Conditional Expressions -  uses the value of a boolean expression to select one of two values.
The syntax of a conditional expression:
```
condition ? true_val : false_val
```
* If condition is true then the result is true_val
* If condition is false then the result is false_val

