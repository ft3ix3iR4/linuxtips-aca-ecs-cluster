project_name = "linuxtips-ecs-cluster"

region = "us-east-1"

#### SSM VPC PARAMETERS ####

ssm_vpc_id = "/linuxtips-vpc/vpc/vpc_id"

ssm_public_subnet_1 = "/linuxtips-vpc/public_subnet_1a"

ssm_public_subnet_2 = "/linuxtips-vpc/public_subnet_1b"

ssm_public_subnet_3 = "/linuxtips-vpc/public_subnet_1c"

ssm_private_subnet_1 = "/linuxtips-vpc/private_subnet_1a"

ssm_private_subnet_2 = "/linuxtips-vpc/private_subnet_1b"

ssm_private_subnet_3 = "/linuxtips-vpc/private_subnet_1c"

#### LOAD BALANCER ####

load_balancer_internal = false

load_balancer_type = "application"

#### ECS GENERAL ####

node_ami = "ami-0a5c3558529277641"

node_instance_type = "t2.micro"

node_volume_type = "gp3"

node_volume_size = "20"


cluster_on_demand_min_size = "2"

cluster_on_demand_max_size = "4"

cluster_on_demand_desired_size = "3"

cluster_spot_min_size = "2"

cluster_spot_max_size = "4"

cluster_spot_desired_size = "3"