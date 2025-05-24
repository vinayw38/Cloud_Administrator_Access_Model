# Configure the backend for storing Terraform state
terraform {
  required_version = "~> 1.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "~> 3.20.0" # or latest stable
    }
  }

  # === Remote Backend via Terraform Cloud/Enterprise ===
  # Uncomment below to use Terraform Cloud or Enterprise
  #
  # backend "remote" {
  #   hostname     = "app.terraform.io"         # or your custom hostname
  #   organization = "your-org-name"
  #
  #   workspaces {
  #     name = "your-workspace-name"
  #   }
  # }

  # === S3 Backend (for AWS) ===
  # Uncomment below to use AWS S3 + DynamoDB for state and locking
  #
  # backend "s3" {
  #   bucket         = "your-s3-bucket-name"
  #   key            = "terraform/state.tfstate"       # path within the bucket
  #   region         = var.aws_region
  #   encrypt        = true                            # encrypt state at rest
  #   dynamodb_table = "your-dynamodb-lock-table"      # for state locking
  #   profile        = "your-aws-cli-profile"          # optional: named AWS CLI profile
  #   role_arn       = "arn:aws:iam::123456789012:role/TerraformExecutionRole"  # optional: for cross-account use
  # }
}
