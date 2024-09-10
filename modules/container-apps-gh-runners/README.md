# hello-modules/container-apps-gh-runners

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.116.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=3.116.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_container_app_environment.acaghr_env](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment) | resource |
| [azurerm_container_app_job.acaghr_app_job](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_job) | resource |
| [azurerm_key_vault.acaghr_vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) | resource |
| [azurerm_key_vault_secret.acaghr_app_key](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |
| [azurerm_log_analytics_workspace.acaghr_log](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace) | resource |
| [azurerm_resource_group.acaghr_rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.acaghr_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_user_assigned_identity.acaghr_managed_identity](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |
| [azurerm_virtual_network.acaghr_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_service_endpoints"></a> [additional\_service\_endpoints](#input\_additional\_service\_endpoints) | Additional service endpoints to add. Microsoft.KeyVault is always added as the setup needs this | `set(string)` | `[]` | no |
| <a name="input_app_id"></a> [app\_id](#input\_app\_id) | Github App Id | `string` | n/a | yes |
| <a name="input_app_key"></a> [app\_key](#input\_app\_key) | Github app private key | `string` | n/a | yes |
| <a name="input_install_id"></a> [install\_id](#input\_install\_id) | Github Installation Id | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Location of the resources in azure | `string` | `"norwayeast"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | Github owner/organization to add the runner to | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Prefix for resources | `string` | `"demo"` | no |
| <a name="input_repo"></a> [repo](#input\_repo) | Github repo to add the runner to | `string` | n/a | yes |
| <a name="input_runner_cpu"></a> [runner\_cpu](#input\_runner\_cpu) | CPU allocated to a runner | `string` | `"0.5"` | no |
| <a name="input_runner_image"></a> [runner\_image](#input\_runner\_image) | Docker image to run when a job is scheduled | `string` | `"ghcr.io/tjololo/github-runner-keda:v0.1.3"` | no |
| <a name="input_runner_ip"></a> [runner\_ip](#input\_runner\_ip) | IP of the runner setting up the infrastructure. This needs to be granted before updates with terraform is executed, this is just to ensure that it will not always have a change in the infrastructure | `string` | `""` | no |
| <a name="input_runner_labels"></a> [runner\_labels](#input\_runner\_labels) | Additional labels to add to the runner | `string` | `"default"` | no |
| <a name="input_runner_max_running_jobs"></a> [runner\_max\_running\_jobs](#input\_runner\_max\_running\_jobs) | Maximum number of jobs to run at one time | `string` | `"20"` | no |
| <a name="input_runner_memory"></a> [runner\_memory](#input\_runner\_memory) | Memory allocated to a runner | `string` | `"1Gi"` | no |
| <a name="input_runner_min_running_jobs"></a> [runner\_min\_running\_jobs](#input\_runner\_min\_running\_jobs) | Minimum number of jobs that always should be running | `string` | `"0"` | no |
| <a name="input_subnet_address_space"></a> [subnet\_address\_space](#input\_subnet\_address\_space) | The addressspace to use for the githubrunners subnet inside the vnet. Must be a valid subnet in the vnet\_address\_space | `string` | `"10.128.0.0/23"` | no |
| <a name="input_vnet_address_space"></a> [vnet\_address\_space](#input\_vnet\_address\_space) | The addressspace to use for the githubrunners vnet | `string` | `"10.128.0.0/16"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->