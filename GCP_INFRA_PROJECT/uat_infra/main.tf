#  Cloud storage implementation for deployment architecture. 
#  For dev environment creating bucket resource 
#  Adding config for remote state 

terraform{
backend "gcs" {
     bucket  = "state-bucket-v1"
    prefix = "uat_state/state"
}
}

resource "google_storage_bucket" "infra-uat-bucket-v1"{
    project = "RAJAN-TERRAFORM-GCP" 
    name = var.uat_bucket
    location = "us-east1"
}



# Creating compute engine instance
resource "google_compute_instance" "uat_instance_v1_1" {
  name         = "uat-instance-v1"
  project      = "rajan-terraform-gcp"
  machine_type = "f1-micro"          # Cost-effective machine type
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11-bullseye-v20241009"  # A lightweight OS image
    }
  }
  network_interface {
    network = "default"  # Use the default VPC network
    access_config {}      # Create a public IP address
  }
}

# Creating bigquery dataset
resource "google_bigquery_dataset" "uat-dataset" {
  dataset_id                  = "uat_dataset_v1"
  project                     = "rajan-terraform-gcp"
  friendly_name               = "test"
  description                 = "This is a uat dataset"
  location                    = "us-east1"
  default_table_expiration_ms = 3600000000

  labels = {
    env = "uat"
  }
}
