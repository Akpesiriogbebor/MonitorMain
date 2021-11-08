# Azure Monitor & Log Analytics Metrics - Terraform module

## Overview

This module creates monitoring metric resources on Microsoft Azure, and is used by the Ensono Cloud Services Provider (CSP) landing zones provisioning process.  This module will cover both Azure Monitor resources and Azure Log Analytics metrics.

## Prerequisites

- Access to an **Azure subscription**.
- Access to **Azure DevOps** and to the Ensono **Core** project
  - Ensure access to service principal authentication
  - Ensure ability to modify release pipeline variables
  - Ensure ability to create/modify code on Azure DevOps repo(s)

## Getting started

This module has the following use cases:

- Initial deployment of Azure Monitors and/or Azure Log Analytics Workspaces
- Adding new monitoring metrics to the existing module and re-deploying to existing Log Analytics Workspaces

## Version

This module is currently using the following Azure provider version:


``` terraform
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.66.0"
    }
  }
}
```


## Using the module

At a high level the follow activities are performed in utilizing this module:

- New customer landing zone or Log Analytics Workspace
  1. Acquire Log Analytics Workspace identifiers:
     - resource ID
     - resource group name
  2. Update **Azure DevOps** pipeline variables with Log Analytics workspace identifiers
  3. Commit variables and run release pipeline

- Adding new metrics to existing Log Analytics Workspace
  1. Acquire Log Analytics Workspace identifiers:
     - resource ID
     - resource group name
  2. Add Terraform code to existing repo in the following ways:
     - Update existing metric query schema (e.g. change threshold)
     - Add a new Terraform metric resource block to existing Azure resource sub-folder (e.g. KeyVault)
     - Create a new sub-directory for a brand new Azure service that needs initial metrics to be created 
  3. Create pull request for code review
  4. Run build pipeline yml template
  5. Update **Azure DevOps** pipeline variables with Log Analytics workspace identifiers
  6. Commit variables and run release pipeline
  


A detailed instructions document can be found [here](https://dev.azure.com/EnsonoDevOps/Core/_git/Core_Convert_Datadog_to_Azure_Monitor?path=/Instructions.md&version=GBwb_branch).


## Index

For a complete index of the currently available Azure Monitor & Log Analytics metrics please use the following links:

[Azure Monitor](https://dev.azure.com/EnsonoDevOps/Core/_git/Core_Convert_Datadog_to_Azure_Monitor?path=/AZURE_MONITORS.md&version=GBwb_branch)

[Log Analytics](https://dev.azure.com/EnsonoDevOps/Core/_git/Core_Convert_Datadog_to_Azure_Monitor?path=/LOG_ANALYTICS_MONITORS.md&version=GBwb_branch)


## Community

Feel free to open an issue for feature or bug, or to submit a PR, [Please check out the WIKI for coding standards, common patterns and PR checklist.](https://github.com/aztfmod/terraform-azurerm-caf/wiki)

In case you have any question, you can reach out to <insert text>.







