variable content {
  type        = number
  default     = 1122334455
  description = " This is the content written to file created by tf. If no other value provided default will be assigned" 
  nullable = false
  sensitive = true
#   This is not supported we tried applying validation
# validation = {
#           condition = length(var.content) > 10
#           error_message = "The value should be 10 digit"      
#   }
 }
#  If set blank it will ask you at runtime to provide manually
variable filename {}

variable is_required {
    type = bool
    default = true
}

variable data {
    type = number
    default = 9999999999

}