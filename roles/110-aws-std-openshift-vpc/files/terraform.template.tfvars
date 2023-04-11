## region: The deployment region
region="ap-south-1"

## vpn_allowed_cidr_ranges: List of CIDR ranges from which access is allowed.
vpn_allowed_cidr_ranges="10.0.0.0/16"

## vpn_client_cidr_block: client cidr block for vpn
vpn_client_cidr_block="172.13.0.0/16"

## vpn_authentication_saml_provider_arn: (Optional) The ARN of the IAM SAML identity provider if type is federated-authentication.
vpn_authentication_saml_provider_arn="undefined"

## resource_group_name: The name of the resource group where the VPC is deployed. On AWS this value becomes a tag.
resource_group_name="default"

## vpn_dns_servers: List of DNS Servers.
vpn_dns_servers="10.0.0.2"

## name_prefix: Prefix to be added to the names of resources which are being provisioned
name_prefix=""

## access_key: the value of access_key
access_key="undefined"

## secret_key: the value of secret_key
secret_key="undefined"

## provision: Flag indicating that the instance should be provisioned. If false then an existing instance will be looked up
provision="true"

## aws-ec2-bastion_ami_id: AMI ID for bastion host
aws-ec2-bastion_ami_id=""

## aws-ec2-bastion_instance_type: EC2 Instance Type 2 default
aws-ec2-bastion_instance_type="t2.micro"

## ngw_connectivity_type: (Optional) Connectivity type for the gateway. Valid values are private and public. Defaults to public.
ngw_connectivity_type="public"

## multi-zone: Create subnets in multiple zones
multi-zone="true"

## rosa_token: get an offline access token at https://cloud.redhat.com/openshift/token/rosa 
rosa_token=""

## cluster_ocp_version: Version of OpenShift that will be used to install the cluster
cluster_ocp_version="4.9.15"

## cluster_no_of_compute_nodes: Number of worker nodes to be provisioned
cluster_no_of_compute_nodes="1"

## cluster_compute-machine-type: Instance type for the compute nodes. Determines the amount of memory and vCPU allocated to each compute node. Default m5.xlarge
cluster_compute-machine-type="m5.xlarge"

