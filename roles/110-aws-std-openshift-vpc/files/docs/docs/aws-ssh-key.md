# AWS SSH Key module

Module to register an ssh key into the AWS Cloud infrastructure for use in securely accessing VPC resources


## Software dependencies

The module depends on the following software components:

### Terraform version

- \>= v0.15

### Terraform providers


- aws (hashicorp/aws)

### Module dependencies


None

## Example usage

```hcl
module "bastion_access_key" {
  source = "github.com/cloud-native-toolkit/terraform-aws-ssh-key"

  access_key = var.bastion_access_key_access_key
  label = var.bastion_access_key_label
  name = var.bastion_access_key_name
  name_prefix = var.name_prefix
  private_key = var.bastion_access_key_private_key
  private_key_file = var.bastion_access_key_private_key_file
  public_key = var.bastion_access_key_public_key
  public_key_file = var.bastion_access_key_public_key_file
  region = var.bastion_access_key_region
  rsa_bits = var.bastion_access_key_rsa_bits
  secret_key = var.bastion_access_key_secret_key
}

```

## Module details

### Inputs

| Name | Description | Required | Default | Source |
|------|-------------|---------|----------|--------|
| region |  | false | ap-south-1 |  |
| access_key |  | true |  |  |
| secret_key |  | true |  |  |
| name_prefix | name prefix | false | swe |  |
| name |  | true |  |  |
| label |  | false | prd |  |
| public_key_file |  | true |  |  |
| private_key_file |  | true |  |  |
| public_key |  | true |  |  |
| private_key |  | true |  |  |
| rsa_bits |  | false | 3072 |  |

### Outputs

| Name | Description |
|------|-------------|
| usrprikey |  |
| usrpubkey |  |
| swesshkeyname |  |

## Resources

- [Documentation](https://operate.cloudnativetoolkit.dev)
- [Module catalog](https://modules.cloudnativetoolkit.dev)

> License: Apache License 2.0 | Generated by iascable (0.1.5)