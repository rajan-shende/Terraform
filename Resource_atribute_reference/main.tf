#  Implicit Dependencies
#  Dependency of file_reference resource
resource "random_id" "Customer_id" {
  byte_length = 10
}


#  The content of file depends on the above random_id generated
resource "local_file" "file_reference" {
  filename = "File_reference.txt"
  content  = tostring(random_id.Customer_id.hex)  } # Use tostring() function to convert uuid to string format # Use .hex to get a string representation

