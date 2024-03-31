## "Utilize terraform modules to create a kubernetes cluster in Azure"


To upgrade the lock file after upgrading terraform providers version, run the following:

```
terraform init -upgrade
```

Provide environment variables as follows:

```
terraform plan -var-file="./tfvars/dev/terraform.tfvars" -out terraform.plan
terraform apply terraform.plan -auto-approve
terraform apply terraform.plan 
terraform destroy -var-file="./tfvars/dev/terraform.tfvars" -auto-aprove 
```
