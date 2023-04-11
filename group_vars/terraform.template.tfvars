## access_key: the value of access_key
access_key="undefined"

## config_banner_text: The text that will appear in the top banner in the cluster
config_banner_text="undefined"

## gitops_repo_repo: The short name of the repository (i.e. the part after the org/group name)
gitops_repo_repo="undefined"

## vpn_authentication_saml_provider_arn: (Optional) The ARN of the IAM SAML identity provider if type is federated-authentication.
vpn_authentication_saml_provider_arn="undefined"

## aws-ec2-bastion_ami_id: AMI ID for bastion host
aws-ec2-bastion_ami_id=""

## aws-ec2-bastion_instance_type: EC2 Instance Type 2 default
aws-ec2-bastion_instance_type="t2.micro"

## cluster_compute-machine-type: Instance type for the compute nodes. Determines the amount of memory and vCPU allocated to each compute node. Default m5.xlarge
cluster_compute-machine-type="m5.xlarge"

## cluster_no_of_compute_nodes: Number of worker nodes to be provisioned
cluster_no_of_compute_nodes="1"

## cluster_ocp_version: Version of OpenShift that will be used to install the cluster
cluster_ocp_version="4.9.15"

## gitops_repo_host: The host for the git repository. The git host used can be a GitHub, GitHub Enterprise, Gitlab, Bitbucket, Gitea or Azure DevOps server. If the host is null assumes in-cluster Gitea instance will be used.
gitops_repo_host=""

## gitops_repo_org: The org/group where the git repository exists/will be provisioned. If the value is left blank then the username org will be used.
gitops_repo_org=""

## gitops_repo_project: The project that will be used for the git repo. (Primarily used for Azure DevOps repos)
gitops_repo_project=""

## gitops_repo_username: The username of the user with access to the repository
gitops_repo_username=""

## multi-zone: Create subnets in multiple zones
multi-zone="true"

## name_prefix: Prefix to be added to the names of resources which are being provisioned
name_prefix=""

## ngw_connectivity_type: (Optional) Connectivity type for the gateway. Valid values are private and public. Defaults to public.
ngw_connectivity_type="public"

## provision: Flag indicating that the instance should be provisioned. If false then an existing instance will be looked up
provision="true"

## region: The deployment region
region="ap-south-1"

## resource_group_name: The name of the resource group where the VPC is deployed. On AWS this value becomes a tag.
resource_group_name="default"

## vpn_allowed_cidr_ranges: List of CIDR ranges from which access is allowed.
vpn_allowed_cidr_ranges="10.0.0.0/16"

## vpn_client_cidr_block: client cidr block for vpn
vpn_client_cidr_block="172.13.0.0/16"

## vpn_dns_servers: List of DNS Servers.
vpn_dns_servers="10.0.0.2"

