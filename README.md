# 3-Tier Web Application Deployment with Terraform

## **Overview**
This repository contains Terraform scripts to deploy a **3-tier web application** on AWS, following best practices for **scalability, security, and maintainability**.


### **Architecture**
- **Presentation Layer (Web Tier)** – Public-facing EC2 instances behind an **Application Load Balancer (ALB)**.
- **Application Layer (App Tier)** – Private EC2 instances handling business logic.
- **Database Layer (DB Tier)** – **Amazon RDS** in a private subnet for secure storage.

## **Project Structure**
```
3-tier-webapp/
│
├── .terraform/                     # Terraform's internal files and state
│   ├── .terraform.lock.hcl         # Lock file for provider versions
│   ├── terraform.tfstate           # Current state of your infrastructure
│   └── modules/                    # Cached modules
│
├── backend.tf                      # Backend configuration for state management
├── main.tf                         # Main configuration file for resources
├── providers.tf                    # Provider configuration (e.g., AWS)
├── terraform.tfvars                # Variable values for the Terraform configuration
├── variables.tf                    # Variable definitions
│
├── modules/                        # Custom modules for organizing resources
│   ├── compute/                    # Module for compute resources (EC2, ALB, etc.)
│   │   ├── alb.tf                  # ALB configuration
│   │   ├── autoscaling.tf          # Auto Scaling configuration
│   │   ├── ec2.tf                  # EC2 instance configuration
│   │   ├── outputs.tf              # Outputs for the compute module
│   │   └── variables.tf            # Variables for the compute module
│   │
│   ├── database/                   # Module for database resources (RDS, etc.)
│   │   ├── rds.tf                  # RDS configuration
│   │   ├── outputs.tf              # Outputs for the database module
│   │   └── variables.tf            # Variables for the database module
│   │
│   └── networking/                 # Module for networking resources (VPC, subnets, etc.)
│       ├── vpc.tf                  # VPC configuration
│       ├── subnets.tf              # Subnet configuration
│       ├── nat.tf                  # NAT Gateway configuration
│       ├── security_groups.tf       # Security Groups configuration
│       ├── outputs.tf              # Outputs for the networking module
│       └── variables.tf            # Variables for the networking module
│
└── README.md
```

## **Prerequisites**
- **AWS account**
- **Terraform installed** (`>= v1.5`)
- **AWS CLI configured**
- **SSH Key Pair** (for EC2 access)

## **Deployment Steps**
1. **Initialize Terraform**
   ```sh
   terraform init
   ```
2. **Plan the Deployment**
   ```sh
   terraform plan
   ```
3. **Apply Terraform Configuration**
   ```sh
   terraform apply -auto-approve
   ```
4. **Access the Application**
   - Retrieve ALB DNS:
     ```sh
     terraform output alb_dns
     ```
   - Open the DNS URL in a browser.

## **Destroy Infrastructure**
To remove all AWS resources:
```sh
terraform destroy -auto-approve
```

## **Troubleshooting**
- **EC2 not accessible?** Ensure **security groups** allow SSH/HTTP.
- **ALB not routing traffic?** Check **listener rules and target groups**.
- **Database not connecting?** Verify **security group and subnet access**.


**Contributions & Feedback**
Feel free to **fork, contribute, or raise issues** in the repository!

🚀 **Happy Terraforming!**
