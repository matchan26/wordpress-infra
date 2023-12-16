terraform {
  required_version = ">= 1.0"
  backend "s3" {
    bucket  = "matchan26-terraform-state-backend-bucket"
    key     = "terraform/gcp/wordpress-infra/v1/terraform.tfstate"
    region  = "ap-northeast-1"
    encrypt = true
  }
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "virtual-signer-406313"
  region  = "asia-northeast1"
}
