About

Hey and welcome to my First Devops Project , this project is based on Terraform and AWS , i made a Terraform Code with Python that lift up a 2 EC2 machine with ELB , each ec2 contain a different html and css that shows the project deatils and my resume ,
each ec2 has diffrenet user data that you can see in dat1 & data2 they based on apache web server that comes up straight when the machines goes up , i also added an Security group and ELB so when you refesh the page it will shows
the other site in other ec2 . 

the file that we work with :

Main.tf,SG.tf,Var.tf,ELB.tf


 
How to use the code ?

git clone the program

cd to the desired module directory

add your own data to var.tf file

run the following commands:

first command: terraform init

second command: terraform plan

third command : terraform apply


Conntecing to AWS
I recommended to not add AWS_ACCESS_KEY and AWS_SECRET_KEY to the TFs, this is a BIG NO NO !
The recomendation is to use the Provider Vault to store your ACCESS & SECRET keys.
