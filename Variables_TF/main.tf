#  Implementation of Lists
resource "random_integer" "CLIENT_NO" {
  min = var.CLIENT_ID[0]
  max = var.CLIENT_ID[1]
}

#  Implementation of Sets
resource "local_file" "ENV_CONFIGURATION_DEV"{
  filename = tolist(var.Table_Names)[0]
  content = tolist(var.Table_Names)[0]
}

resource "local_file" "ENV_CONFIGURATION_STG"{
  filename = tolist(var.Table_Names)[1]
  content = tolist(var.Table_Names)[1]
}

resource "local_file" "ENV_CONFIGURATION_UAT"{
  filename = tolist(var.Table_Names)[2]
  content = tolist(var.Table_Names)[2]
  
}

resource "local_file" "ENV_CONFIGURATION_PRD"{
  filename = tolist(var.Table_Names)[3]
  content = var.ENV_REGIONS["PRD"]
}


#  Implementation of Map & Object complex type
resource "local_file" "ENV_CONFIGURATION"{
  filename = tolist(var.Table_Names)[3]
  content = <<EOT
   REGION: ${var.ENV_REGIONS["PRD"]}
   UTILS:${var.UTILS["Backend"]}
   EOT
}

