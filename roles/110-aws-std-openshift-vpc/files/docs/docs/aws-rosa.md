# AWS R module

Module to provision rosa on aws rosa cluster


## Software dependencies

The module depends on the following software components:

### Terraform version

- \>= v0.15

### Terraform providers


None

### Module dependencies


- aws-vpc - [github.com/cloud-native-toolkit/terraform-aws-vpc](https://github.com/cloud-native-toolkit/terraform-aws-vpc) (>= 1.0.0)
- public-subnets - [github.com/cloud-native-toolkit/terraform-aws-vpc-subnets](https://github.com/cloud-native-toolkit/terraform-aws-vpc-subnets) (>= 1.0.0)
- private-subnets - [github.com/cloud-native-toolkit/terraform-aws-vpc-subnets](https://github.com/cloud-native-toolkit/terraform-aws-vpc-subnets) (>= 1.0.0)

## Example usage

```hcl
module "cluster" {
  source = "github.com/cloud-native-toolkit/terraform-aws-rosa"

  cluster_name = var.cluster_cluster_name
  compute-machine-type = var.cluster_compute-machine-type
  dry_run = var.cluster_dry_run
  etcd-encryption = var.cluster_etcd-encryption
  existing_vpc = var.cluster_existing_vpc
  host-prefix = var.cluster_host-prefix
  machine-cidr = module.aws-vpc.vpc_cidr
  multi-zone-cluster = var.multi-zone
  name_prefix = var.cluster_name_prefix
  no_of_compute_nodes = var.cluster_no_of_compute_nodes
  ocp_version = var.cluster_ocp_version
  pod-cidr = var.cluster_pod-cidr
  private_subnet_ids = module.worker_subnets.subnet_ids
  private-link = var.cluster_private-link
  public_subnet_ids = module.pub_subnets.subnet_ids
  region = var.cluster_region
  resource_group_name = var.cluster_resource_group_name
  rosa_token = var.cluster_rosa_token
  service-cidr = var.cluster_service-cidr
  subnet_ids = var.cluster_subnet_ids == null ? null : jsondecode(var.cluster_subnet_ids)
  tags = var.cluster_tags
}

```

## Module details

### Inputs

| Name | Description | Required | Default | Source |
|------|-------------|---------|----------|--------|
| name_prefix | Prefix to be added to the names of resources which are being provisioned | false | swe |  |
| region | Please set the region where the resouces to be created | true |  |  |
| resource_group_name | Please set the default resource group with tags | true |  |  |
| rosa_token | get an offline access token at https://cloud.redhat.com/openshift/token/rosa  | true |  |  |
| dry_run | Set to true to dry the command just to verify. Else set to false to actually run the cmd | true |  |  |
| existing_vpc | Flag to identify if VPC already exists. Default set to true. Used to identify to pass the subnet ids to create the ROSA cluster | false | true |  |
| cluster_name | Name of the RedHat OpenShift Cluster | true |  |  |
| ocp_version | Version of OpenShift that will be used to install the cluster | false | 4.9.15 |  |
| no_of_compute_nodes | Number of worker nodes to be provisioned | false | 2 |  |
| compute-machine-type | Instance type for the compute nodes. Determines the amount of memory and vCPU allocated to each compute node. Default m5.xlarge | false | m5.xlarge |  |
| machine-cidr | ipNet Block of IP addresses used by OpenShift while installing the cluster, for example 10.0.0.0/16  | true |  | aws-vpc.vpc_cidr |
| service-cidr | ipNet Block of IP addresses for services, for example 172.30.0.0/16  | false | 172.30.0.0/16 |  |
| pod-cidr | ipNet Block of IP addresses from which Pod IP addresses are allocated, for example 10.128.0.0/14  | false | 10.128.0.0/14 |  |
| host-prefix | Subnet prefix length to assign to each individual node. For example, if host prefix is set to 23, then each node is assigned a /23 subnet out of the given CIDR. | false | 23 |  |
| etcd-encryption | Add etcd encryption. By default etcd data is encrypted at rest. This option configures etcd encryption on top of existing storage encryption. | true |  |  |
| subnet_ids | To create cluster in existing VPC, public and private Subnet ids should be given . | false |  |  |
| public_subnet_ids | To create cluster in existing VPC, public and private Subnet ids should be given . | false |  | public-subnets.subnet_ids |
| private_subnet_ids | To create cluster in existing VPC, public and private Subnet ids should be given . | false |  | private-subnets.subnet_ids |
| multi-zone-cluster |  Deploy to multiple data centers | true |  |  |
| private-link | Provides private connectivity between VPCs, AWS services, and your on-premises networks, without exposing your traffic to the public internet | true |  |  |
| tags |  | false | {} |  |

### Outputs

| Name | Description |
|------|-------------|
| id | ID of the cluster. |
| name | Name of the cluster. |
| resource_group_name | Name of the resource group containing the cluster. |
| region | Region containing the cluster. |
| server_url | The url used to connect to the api server. If the cluster has public endpoints enabled this will be the public api server, otherwise this will be the private api server url |
| console_url | The url of the OCP console.  |
| platform |  |
| config_file_path | Path to the config file for the cluster. |
| token | The admin user token used to generate the cluster |
| username | The username of the admin user for the cluster |
| password | The password of the admin user for the cluster |
| domainname | The domain name  for the cluster |

## Resources

- [Documentation](https://operate.cloudnativetoolkit.dev)
- [Module catalog](https://modules.cloudnativetoolkit.dev)

> License: Apache License 2.0 | Generated by iascable (0.1.5)
