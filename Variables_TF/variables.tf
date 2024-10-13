#  All complex variables in terraform : 
# Lists, Set, Map, Tuple, Object

#  Working with lists
variable environments{
type = list(string)
default = ["Mydev","Mystg","Myuat","Myprod"]
}

variable IPV4_PUBLIC {
    type = list(any)
    default = ["IPV4",122]
}

variable FLAGS{
    type = list(bool)
    default = [false,false]
}

variable CLIENT_ID{
    type = list(number)
    default = [10000,20000]
}

#  Working with Set
#  To access data in the set you have to first convert them to list & access usign indices accordingly.
variable Table_Names{
    type = set(string)

    default = ["DEV_REPORTS_1","STG_REPORTS_2","UAT_REPORTS_3","PROD_REPORTS_4"]
}

# Working with Tuple
#  There is no such data type as a tuple in terraform But can be achived using a list
variable "REGION_PREFERENCE"{
    type = list(string)
    default = ["USA","US_EAST_1"]
}

# Working with Map in terraform
# Theses are like dictionary in python ; Key-value pairs

variable "ENV_REGIONS"{
    type = map(any)
    default = {"DEV"="us-east-1","STG"="us-east-2","UAT"="us-east-3","PRD"="us-east-4"}

}

# Working with Object in terraform
# Theses are like simple objects with some key value pairs

variable "UTILS"{
    type = object({ENV=string,Backend=bool})
    default = {
        ENV = "PROD"
        Backend = false
    }
}
