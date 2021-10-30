terraform init
terraform plan -out=output
terraform show -json output > plan.json
opa eval --format pretty --data policy.rego -i plan.json 'data.terraform'

terraform apply -auto-approve


#Test here
