# Terraform AWS Nginx Web Infrastructure

## Project Overview

This project provisions four AWS EC2 web servers using Terraform. Each server automatically installs Nginx and hosts a custom HTML webpage using EC2 user data.

## Architecture

```text
                 AWS
                  |
          Terraform Infrastructure
                  |
        +---------+---------+
        |         |         |
      EC2-1     EC2-2     EC2-3     EC2-4
        |         |         |         |
      Nginx     Nginx     Nginx     Nginx
        |         |         |         |
      HTML      HTML      HTML      HTML
```

## Technologies

* AWS EC2
* Nginx
* HTML
* Terraform
* Git
* GitHub

## Infrastructure

Terraform creates:

* 4 EC2 instances
* EC2 Security Group
* HTTP access on port 80
* Nginx installation using EC2 user data
* Custom HTML webpage
* Resource tagging

## Terraform Files

```text
.
├── main.tf
├── providers.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── user-data.sh
├── .gitignore
└── README.md
```

## Deployment

Initialize Terraform:

```bash
terraform init
```

Validate the configuration:

```bash
terraform validate
```

Format Terraform files:

```bash
terraform fmt
```

Create the infrastructure:

```bash
terraform apply
```

Get EC2 public IPs:

```bash
terraform output public_ips
```

Open any IP in a browser:

```text
http://<EC2-PUBLIC-IP>
```

## Destroy Infrastructure

To remove the AWS resources:

```bash
terraform destroy
```

## Future Improvements

* GitHub Actions CI/CD
* AWS Systems Manager
* CloudWatch monitoring
* Improved security groups
* Custom VPC and subnet architecture
* Automated HTML deployment
* Infrastructure testing
