#### GENERAL CONFIGUTATIONS ####

variable "project_name" {}

variable "region" {}

#### SSM VPC ####

variable "ssm_vpc_id" {}

variable "ssm_public_subnet_1" {}

variable "ssm_public_subnet_2" {}

variable "ssm_public_subnet_3" {}

variable "ssm_private_subnet_1" {}

variable "ssm_private_subnet_2" {}

variable "ssm_private_subnet_3" {}

#### LOAD BALANCER ####

variable "load_balancer_internal" {}

variable "load_balancer_type" {}

#### ECS GENERAL ####

variable "node_ami" {}

variable "node_instance_type" {}

variable "node_volume_type" {}

variable "node_volume_size" {}