resource "local_file" "Myfile_123"{
    filename = "File_Sample_2"
    content = "This is from infra file"

}
resource "local_file" "Phone"{
    filename = var.filename
    content = var.content   
}