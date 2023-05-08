module "ec2-cluster" {
  source = "github.com/sebasslash/terraform-fakewebservices-ec2-cluster"

  token = var.token
  hostname = var.hostname
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
  
variable "hostname" {
  type = string
  default = "app.terraform.io"
  description = "The hostname to use"
}

variable "instance_type" {
  type = string
  description = "The EC2 instance type"
}

variable "cluster_name" {
  type = string
  description = "The name of the EC2 cluster"
  default = "atlas"
}

variable "cidr_block" {
  type = string
  description = "The range of IPv4 addresses for this VPC, in the form of a Classless Inter-Domain Routing (CIDR) block."
}

variable "db_size" {
  type = number
  description =  "The allocated size of the database in gigabytes."
}
