#  Cloud storage implementation for deployment architecture. 
#  Maintaining remote state 

resource "google_storage_bucket" "infra-state-bucket-v1"{
    project = "RAJAN-TERRAFORM-GCP" 
    name = "state-bucket-v1"
    location = "us-east1"
    
}
