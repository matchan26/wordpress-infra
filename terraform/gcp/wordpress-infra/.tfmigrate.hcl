tfmigrate {
  migration_dir = "./tfmigrate"
  history {
    storage "s3" {
      bucket = "matchan26-terraform-state-backend-bucket"
      key    = "terraform/gcp/wordpress-infra/history.json"
    }
  }
}
