# terraform_for_each
Example of using for_each

This is a simple example of using a list of objects in terraform to optionaly loop through to create resources, in this example using the `local_file` resource with a variable defined as:

````bash
$ cat variables.tf
variable "files" {
  type = list(object({
    content  = string
    filename =  string
  }))
}
````

and supplying a .tfvars constructed in the following way:

````bash

$ cat vars/test.tfvars 
files = [
  {
    "filename": "one.txt",
    "content": "one"
  },
  {
    "filename": "two.txt",
    "content": "two"
  },
]

````

The example can be tested as follows:

Test environment:  

````bash

$ git clone https://github.com/tonyskidmore/terraform_for_each.git
$ cd terraform_for_each
$ terraform init
$ terraform plan -var-file=vars/test.tfvars -out tfplan
$ terraform apply tfplan

$ ls
main.tf  one.txt  terraform.tfstate  tfplan  two.txt  variables.tf  vars

````

Prod environment:  

````bash

$ terraform plan -var-file=vars/prod.tfvars -out tfplan
$ terraform apply tfplan

$ ls
main.tf  terraform.tfstate  terraform.tfstate.backup  tfplan  variables.tf  vars

````
