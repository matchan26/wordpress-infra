terraform {
  required_version = ">= 1.0"
  backend "s3" {
    bucket  = "<S3 Bucket Name>"
    key     = "%%TARGET%%/v1/terraform.tfstate"
    region  = "ap-northeast-1"
    encrypt = true
  }
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  owner = "matchan26" # CHANGEME Fix owner
}
