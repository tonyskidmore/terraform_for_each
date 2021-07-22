# terraform_for_each
Example of using for_each

````bash

git clone https://github.com/tonyskidmore/terraform_for_each.git
cd terraform_for_each
terraform init
terraform plan -out tfplan
terraform apply -var-file=vars/test.tfvars

````
