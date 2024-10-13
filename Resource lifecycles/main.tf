# Immutable vs Mutable infrastructure :
# Immutable : Once created and in future if want any Updates to the same infrastructure you will
#              Need to destroy the existing & have to create a new one with Updates.
# Mutuable  : You can make changes to existing infrastructure without destroying them.
# 
# The 4 Lifecycles rules in terraform : 1. create_before_destroy   2. prevent_destroy
#                                       3. Ignore changes          4. replace_triggered_by

#  create_before_destroy
resource "local_file" "CBD_1"  {
filename             = "CBD_1.txt"
  content = "This is a create before destroy file; Which is reverse of current terraform lifecycle"
  lifecycle{
     create_before_destroy = true
  }
}

#  prevent_destroy
resource "local_file" "PD_1"  {
filename             = "PD_1.txt"
  content = "This is a  prevent destroy file; Which is non destructive terraform lifecycle"
  lifecycle{
     prevent_destroy = false
  }
}

# ignore_changes 
resource "local_file" "IC_1" {
  filename = "IC_1.txt"
  content  = "This is an ignore changes file; which is non-changing terraform lifecycle"

  lifecycle {
    ignore_changes = [content]   # Here telling terraform to ignore changes w.r.t. content
  }
}

# replace_triggered_by
resource "local_file" "RTB_1" {
  filename = "RTB_1.txt"
  content  = "This is an ignore changes file; which is non-changing terraform lifecycle"

  lifecycle {
    replace_triggered_by = [local_file.CBD_1]   # Here telling terraform to replace infra triggered w.r.t. triggered event resource
  }
}


