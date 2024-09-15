variable "instance_names" {
    type = list(string)
    default = ["mysql","backend","frontend"]
}

variable "common_tags" {
    type = map
    default = {
        project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "zone_id" {
    default = "Z01584833LT7LVUACGA1"
}

variable "domain_name"{
    default = "kalpanadevops.online"
}
