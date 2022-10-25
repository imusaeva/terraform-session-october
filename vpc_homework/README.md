![images](https://user-images.githubusercontent.com/85028974/197711473-69d28f16-ed55-4543-a7e5-2911f3e1afcf.png)
Task:
```
Create VPC with the CIDR block 10.0.0.0/16 in us-east-1.

Within the VPC, create the following resources:
Part1
A. Create a public route table.
B. Create 3 subnets with CIDR range 10.0.1.0/24, 10.0.2.0/24, 10.0.3.0/24 and
associate the subnets to public route table
C. Create a Internet Gateway and attach it to the public route table
Part2
A. Create a private route table and 
B. Create 3 subnets with CIDR range 10.0.11.0/24, 10.0.12.0/24, 10.0.13.0/24 and
associate the subnets to private route table
C. Create a NAT gateway and attach it to the private route table
Part3
A. Create an EC2 Instance on one your public subnets
B. Create a security group, open port 22 && 80, attach it to EC2 Instance
C. Run the following script on your using User Data:

#!/bin/bash
sudo yum install httpd -y
sudo systemctl start httpd
sudo echo 'Hello from ... Instance' >> /var/www/html/index.html

D. Use your Terraform Server's Public Key for the EC2 instance.
```

![1_VKTHtHwo3pUxeDP0ZmrOoA](https://user-images.githubusercontent.com/85028974/197711623-2347271b-6a31-4d84-8d48-8390154ffdc7.jpg)

# Steps:
* Create a new VPC with the required CIDR blocks and subnets [aws_vpc Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
* Create Route Tables and Subnet Associations [aws_route Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table)
* Create Internet Gateway and NAT Gateway and associated them with public and private subnets [NAT Gateway Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) and [Internet Gateway Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway)

