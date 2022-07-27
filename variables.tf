variable "vpc_name" {
    description = "This is a vpc name"
    type = string
}

variable "vpc_cidr" {
    description = "This is a cidr name"
}

variable "cidr_public" {
    description = "This is a cidr for public subnet in eu-west-1a"
}

variable "cidr_private" {
    description = "This is a cidr for private subnet in eu-west-1a"
}

variable "cidr_data" {
    description = "This is a cidr for data subnet in eu-west-1a"
}

variable "cidr_public1" {
    description = "This is a cidr for public subnet in eu-west-1b"
}

variable "cidr_private1" {
    description = "This is a cidr for private subnet in eu-west-1b"
}

variable "cidr_data1" {
    description = "This is a cidr for data subnet in eu-west-1b"
}