variable "vpc_name" {
    description = "This is a vpc name"
    type = string
}

variable "aws_region" {
    description = "region for resources deplyment"
    type = string
}

variable "vpc_cidr" {
    description = "This is a cidr name"
}

variable "cidr_public" {
    description = "This is a cidr for public subnet"
}

variable "cidr_private" {
    description = "This is a cidr for private subnet"
}

variable "cidr_data" {
    description = "This is a cidr for data subnet"
}