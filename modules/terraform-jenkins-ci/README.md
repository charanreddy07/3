# Terraform Jenkins CI/CD Setup

This project provides a continuous integration and deployment setup for managing infrastructure using Terraform on AWS. It utilizes Jenkins for automation and includes necessary configurations and scripts.

## Project Structure

```
terraform-jenkins-ci
├── src
│   └── main.tf          # Main Terraform configuration file
├── terraform.tfvars     # Variable definitions for Terraform
├── Jenkinsfile          # Jenkins pipeline configuration
└── README.md            # Project documentation
```

## Setup Instructions

1. **Prerequisites**
   - Ensure you have [Terraform](https://www.terraform.io/downloads.html) installed.
   - Ensure you have [Jenkins](https://www.jenkins.io/doc/book/installing/) installed and running.
   - AWS CLI should be configured with appropriate credentials.

2. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd terraform-jenkins-ci
   ```

3. **Configure Variables**
   - Update the `terraform.tfvars` file with your specific AWS configurations, including region, VPC CIDR, subnets, and availability zones.

4. **Jenkins Configuration**
   - Create a new Jenkins pipeline job.
   - Point the job to the repository containing this project.
   - Ensure that the Jenkins environment has access to the necessary AWS credentials.

5. **Running the Pipeline**
   - Trigger the Jenkins job to start the CI/CD process.
   - The pipeline will execute the following stages:
     - Checkout the code from the repository.
     - Initialize Terraform.
     - Plan the infrastructure changes.
     - Apply the changes to provision the resources.

## Usage

- Modify the `src/main.tf` file to define your desired infrastructure.
- Use the `terraform.tfvars` file to manage environment-specific variables.
- Monitor the Jenkins job for logs and output during the CI/CD process.

## Additional Information

- For more details on Terraform, refer to the [Terraform Documentation](https://www.terraform.io/docs/index.html).
- For Jenkins pipeline syntax, refer to the [Jenkins Pipeline Documentation](https://www.jenkins.io/doc/book/pipeline/).