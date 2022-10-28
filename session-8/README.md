# Provisioners

Provisioners can be used to model specific actions on the local machine or on a remote machine in order to prepare servers or other infrastructure objects for service.

Terraform has 3 Generic Provisioners :
* File
* Remote exec (to run code in remote machine)
* Local exec (to run code in local)

# 1  File provissioner 
- Sends a file from terraform local server to a web server (remote machine).
Terraform server should be able to ssh to remote server to send a file to remove machine . 

* Steps :

1 . Run a code to create EC2 Instance and use Provisioner to send a file from terraform machine to the remote machine that we are creating 
```
provisioner "file" {
    source      = "/home/ec2-user/terraform-session-october/session-8/index.html" # Local machine Where this file exist in Terraform server
    destination = "/tmp/index.html"                                               # Remote machine EC2 that I am creating
```

2. We need a ssh connection to that remote machine :
```
connection {
      type        = "ssh"
      user        = "ec2-user"           # remote machine
      host        = self.public_ip       # IP address # self means this block of resource
      private_key = file("~/.ssh/id_rsa")
    }
```

3. Run 
``` 
terraform init         # to initialize working directory
terraform fmt          # format
terraform validate     # to check syntax  
terraform plan         # "dry run"  
terraform apply        # to create resources
```

4. When we have our instance ready , get the public IP address of this new ec2 and connect to it with ssh
Command: ``` ssh ec2-user@public_ip_address ```

5. If you are able to ssh to remote machine check ``` /tmp folder``` if you have index.html file that we were sending from our locall machine. 
If yes , great! Your code worked! :)

# 2  Remote exec
- Runs the script on the remote machine 

1. Steps are the same but we have remote exec provisioner this time:
```
provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl enable httpd",
      "sudo systemctl start httpd",
      "sudo cp /tmp/index.html /var/www/html/index.html"
    ]
```
And if you need to change the configuration file its not going to effect the instance like ```user data``` does.

2. After the ec2 created get IP address to ssh to this instance from your terraform local server.
Run ``` ls  /var/www/html``` to check if you have your index.html file on place

3. Get IP Address and copy it to the browser. If you got the output , your code worked!
Apache was installed and file index.html was send to the remote machine .

# 3 Local Exec run the script on the local machine :
```
resource "null_resource" "local_script" {
  provisioner "local-exec" {
    command = "echo 'Hello from the local Exec' > local.txt"
  }
}
```

*** Why do we use null resource in terraform  - it is not added to terraform.tfstate file. ***

* Note : if ``` git push``` is giving an error when you are pushing the code to the GitHub you need to fetch first.  
Run ``` git pull origin main --rebase ``` to FETCH_HEAD and after that run git push  

