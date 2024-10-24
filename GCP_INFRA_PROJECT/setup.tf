provider "google"{
    credentials = file("/home/rajansh/Documents/temp_1/Terraform_GCP/GCP_INFRA_PROJECT/rajan-terraform-gcp-5f8484294c04.json")
    project = "RAJAN-TERRAFORM-GCP"
    region = "us-east1"
}