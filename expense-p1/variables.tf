variable "instance_name" {
    type = list(string)
    default = ["mysql", "backend", "frontend"]
    description = "description"
}

variable "zone_id" {
    default = "Z01584833LT7LVUACGA1"
}

variable "domain_name" {
    default = "kalpanadevops.online"
}

