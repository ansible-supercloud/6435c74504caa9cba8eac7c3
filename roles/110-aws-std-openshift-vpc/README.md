# 110-aws-std-openshift-vpc

Provision ROSA managed OpenShift on AWS

## Running the automation

This terraform template is part of collection of layers that should be executed together. Before this layer
can be applied, several steps must first be taken:

1. Run `apply.sh` in the parent directory to generate the input variable configuration for the run. If you'd like to apply one layer at a time, select `n` when prompted to continue.
2. Run `apply.sh` for each of the layer dependencies listed below.
3. Run `apply.sh` for this layer.

## Contents

### Layer dependencies


No dependencies

### Modules

| Name | Description | Version |
|------|-------------|---------|
| [aws-client-vpn](https://github.com/cloud-native-toolkit/terraform-aws-vpn-server) | Module to provision vpn service on aws | v1.3.4 |
| [aws-kms](https://github.com/cloud-native-toolkit/terraform-aws-kms) | Module to provision kms on aws | v1.3.0 |
| [aws-ssh-key](https://github.com/cloud-native-toolkit/terraform-aws-ssh-key) | Module to register an ssh key into the AWS Cloud infrastructure for use in securely accessing VPC resources | v1.1.2 |
| [aws-vpc](https://github.com/cloud-native-toolkit/terraform-aws-vpc) | Provisions the AWS VPC instance | v1.6.0 |
| [aws-ec2-bastion](https://github.com/cloud-native-toolkit/terraform-aws-bastion) | Module to provision ec2 on aws | v1.4.0 |
| [aws-internet-gateway](https://github.com/cloud-native-toolkit/terraform-aws-vpc-gateways) | Module to provision internet-gateway on aws | v1.2.1 |
| [aws-nat-gateway](https://github.com/cloud-native-toolkit/terraform-aws-nat-gateway) | Module to provision nat-gateway on aws | v1.1.1 |
| [aws-vpc-subnets](https://github.com/cloud-native-toolkit/terraform-aws-vpc-subnets) | Create subnets for VPC | v2.3.0 |
| [aws-vpc-subnets](https://github.com/cloud-native-toolkit/terraform-aws-vpc-subnets) | Create subnets for VPC | v2.3.0 |
| [aws-rosa](https://github.com/cloud-native-toolkit/terraform-aws-rosa) | Module to provision rosa on aws rosa cluster | v1.6.0 |

### Variables

| Name | Description | Sensitive | Default value |
|------|-------------|-----------|---------------|
| region | The deployment region |  | ap-south-1 |
| vpn_allowed_cidr_ranges | List of CIDR ranges from which access is allowed. |  | 10.0.0.0/16 |
| vpn_client_cidr_block | client cidr block for vpn |  | 172.13.0.0/16 |
| vpn_authentication_saml_provider_arn | (Optional) The ARN of the IAM SAML identity provider if type is federated-authentication. |  |  |
| resource_group_name | The name of the resource group where the VPC is deployed. On AWS this value becomes a tag. |  | default |
| vpn_dns_servers | List of DNS Servers. |  | 10.0.0.2 |
| name_prefix | Prefix to be added to the names of resources which are being provisioned |  |  |
| access_key |  |  |  |
| secret_key |  | true |  |
| provision | Flag indicating that the instance should be provisioned. If false then an existing instance will be looked up |  | true |
| aws-ec2-bastion_ami_id | AMI ID for bastion host |  |  |
| aws-ec2-bastion_instance_type | EC2 Instance Type 2 default |  | t2.micro |
| ngw_connectivity_type | (Optional) Connectivity type for the gateway. Valid values are private and public. Defaults to public. |  | public |
| multi-zone | Create subnets in multiple zones |  | true |
| rosa_token | get an offline access token at https://cloud.redhat.com/openshift/token/rosa  | true |  |
| cluster_ocp_version | Version of OpenShift that will be used to install the cluster |  | 4.9.15 |
| cluster_no_of_compute_nodes | Number of worker nodes to be provisioned |  | 1 |
| cluster_compute-machine-type | Instance type for the compute nodes. Determines the amount of memory and vCPU allocated to each compute node. Default m5.xlarge |  | m5.xlarge |

## Troubleshooting

