variable "vpc_name" {
    description = "This is a vpc name"
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

variable "cidr_private1" {
    description = "This is a cidr for 1st private subnet for db instance"
}

variable "cidr_private2" {
    description = "This is a cidr for 2nd private subnet for db instance"
}