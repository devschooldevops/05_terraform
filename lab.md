- login to azure:
    az cli login
- initialize terraform deployment:
    terraform init -upgrade
- create execution plan:
    terraform plan
- apply execution plan to create infrastructure
    terraform apply
- check/inspect newly deployed infrastructure
    az vm list \
    --resource-group $resource_group_name \
    --query "[].{\"VM Name\":name}" -o table
- cleanup infrastructure
    terraform plan -destroy -out main.destroy.tfplan
    terraform apply main.destroy.tfplan

terraform graph > graph.dot
dot -Tpng graph.dot -o graph.png

terraform plan
terraform plan -var-file="terraform.tfvars"

terraform apply
terraform apply -var-file="terraform.tfvars"


cd ~
mkdir .ssh
chmod 600 .ssh
cd .ssh
vim id_rsa
(paste contents of private key file from terraform output inside and save (:x))
ssh -l devops -i id_rsa public_ip
#public_ip taken from terraform lab1 output)
#to become root
sudo -i