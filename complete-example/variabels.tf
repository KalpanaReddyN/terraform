variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable zone_id {
    default = "Z01584833LT7LVUACGA1" 
} 

variable domain_name {
    default = "kalpanadevops.online"
}
