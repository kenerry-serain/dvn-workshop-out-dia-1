# Workshop DevOps na Nuvem

## Índice

- [Workshop DevOps na Nuvem](#workshop-devops-na-nuvem)
  - [Índice](#índice)
  - [Comandos essenciais do Terraform](#comandos-essenciais-do-terraform)
  - [Credentials](#credentials)
  - [Links](#links)

---

## Comandos essenciais do Terraform

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
terraform show
terraform destroy
terraform state list
terraform output
```

## Credentials

```bash
cat ~/.aws/credentials
export AWS_PROFILE=workshop
aws sts get-caller-identity
```

## Links

[Repo - Dia 01](https://github.com/kenerry-serain/dvn-workshop-out-dia-1)

[AWS Console](https://aws.amazon.com/pt/console/)
[Terraform - Documentation](https://developer.hashicorp.com/terraform/docs)
[Terraform - AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
