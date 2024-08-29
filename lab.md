1. login to azure:
az cli login
2. initialize terraform deployment:
terraform init -upgrade
3. create execution plan:
terraform plan
4. apply execution plan to create infrastructure
terraform apply
5. check/inspect newly deployed infrastructure
az vm list \
  --resource-group $resource_group_name \
  --query "[].{\"VM Name\":name}" -o table
6. cleanup infrastructure
terraform plan -destroy -out main.destroy.tfplan
terraform apply main.destroy.tfplan