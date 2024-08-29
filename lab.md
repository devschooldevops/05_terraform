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