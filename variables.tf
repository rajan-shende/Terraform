variable "filename" {
  type        = string
  default     = "./myfile_demo_1.txt"
  description = "Used as the default"
}

variable "content"{
    type = number
    default = "1111111111"
}

variable "is_sensitive"{
  type = bool
  default = true
}