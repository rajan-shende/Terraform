# Explicit dependencies
resource "random_id" "Customer_id" {
  byte_length = 5
}

resource "random_password" "Credentials_dev" {
  length  = 4
  upper   = true
  lower   = true
  number  = true
  special = true
}

# Local file is currently depending on the above 2 resources. 
# We used depends_on argument to specify the dependency
resource "local_file" "Customers_file" {
  filename = "Customers.txt"
  content = <<EOT
The_id is : ${tostring(random_id.Customer_id.hex)}
The password is : ${tostring(random_password.Credentials_dev.result)}
EOT
  depends_on = [
    random_id.Customer_id,
    random_password.Credentials_dev
  ]
}
