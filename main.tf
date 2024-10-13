resource "local_file" "myfile"{
    filename = "./myfile"
    content = "welcome ! 12345678910111213"
}

resource "local_file" "myfile_1"{
    filename = "./myfile_1"
    content = "This is a second lab on creating infra at local" 
}
resource "random_integer" "random_int"{
    min = 5
    max = 7
}

resource "local_file" "myfile_2"{
    filename = var.filename
    content = var.content
    
        }
resource "local_file" "MF_1"{
    filename = var.filename
    content = var.content
}
# resource "local_file" "MF_2"{
#     filename = var.filename
#     content = var.ENV_REGIONS["PRD"]
# }