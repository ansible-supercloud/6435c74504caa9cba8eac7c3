output "vpn_vpn_server" {
  description = "The arn of acm certificate server"
  value = module.vpn.vpn_server
}
output "vpn_vpn_client" {
  description = "The arn of acm certificate client"
  value = module.vpn.vpn_client
}
output "vpn_sec_id" {
  description = "the value of vpn_sec_id"
  value = module.vpn.sec_id
}
output "vpn_vpn_endpoint_id" {
  description = "the value of vpn_vpn_endpoint_id"
  value = module.vpn.vpn_endpoint_id
}
output "storage_kms_key_arn" {
  description = "Key ARN"
  value = module.storage_kms.key_arn
}
output "storage_kms_key_id" {
  description = "Key ID"
  value = module.storage_kms.key_id
}
output "storage_kms_alias_arn" {
  description = "Alias ARN"
  value = module.storage_kms.alias_arn
}
output "storage_kms_alias_name" {
  description = "Alias name"
  value = module.storage_kms.alias_name
}
output "bastion_access_key_usrprikey" {
  description = "the value of bastion_access_key_usrprikey"
  value = module.bastion_access_key.usrprikey
  sensitive = true
}
output "bastion_access_key_usrpubkey" {
  description = "the value of bastion_access_key_usrpubkey"
  value = module.bastion_access_key.usrpubkey
  sensitive = true
}
output "bastion_access_key_swesshkeyname" {
  description = "the value of bastion_access_key_swesshkeyname"
  value = module.bastion_access_key.swesshkeyname
  sensitive = true
}
output "aws-vpc_vpc" {
  description = "the value of aws-vpc_vpc"
  value = module.aws-vpc.vpc
}
output "aws-vpc_vpc_name" {
  description = "the value of aws-vpc_vpc_name"
  value = module.aws-vpc.vpc_name
}
output "aws-vpc_vpc_id" {
  description = "The id for the vpc network"
  value = module.aws-vpc.vpc_id
}
output "aws-vpc_vpc_arn" {
  description = "The arn of the vpc"
  value = module.aws-vpc.vpc_arn
}
output "aws-vpc_default_network_acl_id" {
  description = "The id for the default network acl"
  value = module.aws-vpc.default_network_acl_id
}
output "aws-vpc_default_security_group_id" {
  description = "The id of the default security group."
  value = module.aws-vpc.default_security_group_id
}
output "aws-vpc_default_security_group_arn" {
  description = "The arn of the default security group."
  value = module.aws-vpc.default_security_group_arn
}
output "aws-vpc_vpc_cidr" {
  description = "The internal vpc cidr."
  value = module.aws-vpc.vpc_cidr
}
output "aws-ec2-bastion_instance_public_ip" {
  description = "The public IP address of the instance."
  value = module.aws-ec2-bastion.instance_public_ip
}
output "aws-ec2-bastion_instance_public_ip" {
  description = "The public IP address of the instance."
  value = module.aws-ec2-bastion.instance_public_ip
}
output "igw_igw_id   " {
  description = "the value of igw_igw_id   "
  value = module.igw.igw_id   
}
output "igw_ids  " {
  description = "the value of igw_ids  "
  value = module.igw.ids  
}
output "igw_igw_arn    " {
  description = "the value of igw_igw_arn    "
  value = module.igw.igw_arn    
}
output "igw_vpc_name    " {
  description = "the value of igw_vpc_name    "
  value = module.igw.vpc_name    
}
output "ngw_ngw_id   " {
  description = "the value of ngw_ngw_id   "
  value = module.ngw.ngw_id   
}
output "ngw_ids  " {
  description = "the value of ngw_ids  "
  value = module.ngw.ids  
}
output "ngw_allocation_id   " {
  description = "The Allocation ID of the Elastic IP address for the gateway."
  value = module.ngw.allocation_id   
}
output "ngw_subnet_ids   " {
  description = "the value of ngw_subnet_ids   "
  value = module.ngw.subnet_ids   
}
output "ngw_network_interface_id    " {
  description = "the value of ngw_network_interface_id    "
  value = module.ngw.network_interface_id    
}
output "ngw_private_ip    " {
  description = "The private IP address of the NAT Gateway."
  value = module.ngw.private_ip    
}
output "ngw_public_ip    " {
  description = "The public IP address of the NAT Gateway."
  value = module.ngw.public_ip    
}
output "pub_subnets_vpc_id" {
  description = "the value of pub_subnets_vpc_id"
  value = module.pub_subnets.vpc_id
}
output "pub_subnets_ids" {
  description = "the value of pub_subnets_ids"
  value = module.pub_subnets.ids
}
output "pub_subnets_count" {
  description = "the value of pub_subnets_count"
  value = module.pub_subnets.count
}
output "pub_subnets_route_table_ids" {
  description = "the value of pub_subnets_route_table_ids"
  value = module.pub_subnets.route_table_ids
}
output "pub_subnets_subnet_ids" {
  description = "the value of pub_subnets_subnet_ids"
  value = module.pub_subnets.subnet_ids
}
output "pub_subnets_subnet_count" {
  description = "the value of pub_subnets_subnet_count"
  value = module.pub_subnets.subnet_count
}
output "worker_subnets_vpc_id" {
  description = "the value of worker_subnets_vpc_id"
  value = module.worker_subnets.vpc_id
}
output "worker_subnets_ids" {
  description = "the value of worker_subnets_ids"
  value = module.worker_subnets.ids
}
output "worker_subnets_count" {
  description = "the value of worker_subnets_count"
  value = module.worker_subnets.count
}
output "worker_subnets_route_table_ids" {
  description = "the value of worker_subnets_route_table_ids"
  value = module.worker_subnets.route_table_ids
}
output "worker_subnets_subnet_ids" {
  description = "the value of worker_subnets_subnet_ids"
  value = module.worker_subnets.subnet_ids
}
output "worker_subnets_subnet_count" {
  description = "the value of worker_subnets_subnet_count"
  value = module.worker_subnets.subnet_count
}
output "cluster_id" {
  description = "ID of the cluster."
  value = module.cluster.id
}
output "cluster_name" {
  description = "Name of the cluster."
  value = module.cluster.name
}
output "cluster_resource_group_name" {
  description = "Name of the resource group containing the cluster."
  value = module.cluster.resource_group_name
}
output "cluster_region" {
  description = "Region containing the cluster."
  value = module.cluster.region
}
output "cluster_server_url" {
  description = "The url used to connect to the api server. If the cluster has public endpoints enabled this will be the public api server, otherwise this will be the private api server url"
  value = module.cluster.server_url
}
output "cluster_console_url" {
  description = "The url of the OCP console. "
  value = module.cluster.console_url
}
output "cluster_platform" {
  description = "the value of cluster_platform"
  value = module.cluster.platform
}
output "cluster_config_file_path" {
  description = "Path to the config file for the cluster."
  value = module.cluster.config_file_path
}
output "cluster_token" {
  description = "The admin user token used to generate the cluster"
  value = module.cluster.token
}
output "cluster_username" {
  description = "The username of the admin user for the cluster"
  value = module.cluster.username
}
output "cluster_password" {
  description = "The password of the admin user for the cluster"
  value = module.cluster.password
}
output "cluster_domainname" {
  description = "The domain name  for the cluster"
  value = module.cluster.domainname
}
