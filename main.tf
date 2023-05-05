module "ec2-cluster" {
  source = "app.staging.terraform.io/stark-enterprises/ec2-cluster/fakewebservices"
  version = "0.1.0"

  token = var.token
  instance_type = var.instance_type
  cluster_name = var.cluster_name
  cidr_block = var.cidr_block
  db_size = var.db_size
}

variable "token" {
  type = string
  description = "The token to configure the fakewebservices provider. Must be a User or Team TFC/E token."
  sensitive = true
}


variable "instance_type" {
  type = string
  description = "The EC2 instance type"
}

variable "cluster_name" {
  type = string
  description = "The name of the EC2 cluster"
}

variable "cidr_block" {
  type = string
  description = "The range of IPv4 addresses for this VPC, in the form of a Classless Inter-Domain Routing (CIDR) block."
}

variable "db_size" {
  type = number
  description =  "The allocated size of the database in gigabytes."
}
