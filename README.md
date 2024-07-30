#Terraform_scripts

Commands

terraform fmt
terramform validate
terraform plan


terraform apply -auto-approve
terraform apply -replace="aws_instance.example[0]" ==> to replace specific resoruces



terraform destroy -auto-approve

terraform refresh

terraform taint resoruce_address            e.g[ aws_ami.id]



terraform graph -type=plan | dot -Tpng >graph.png


terraform graph -type=plan | dot -Tpdf >graph.pdf


// Terraform workspace

terraform workspace list
terraform workspace show workspace_name


terraform workspace select workspace_name

terraform workspace delete workspace_name