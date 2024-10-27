provider "google"{
    credentials = file("/home/rajansh/Documents/temp_1/Terraform_GCP/GCP_INFRA_PROJECT/rajan-terraform-gcp-f3e3da80ea2d.json")
    project = "RAJAN-TERRAFORM-GCP"
    region = "us-east1"
}