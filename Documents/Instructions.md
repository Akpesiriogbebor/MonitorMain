# Using this module

## New customer landing zone or Log Analytics Workspace

### ***High-Level Steps***

  1. Acquire Log Analytics Workspace identifiers:
     - Log Analytics Workspace name
     - Log Analytics Workspace resource group name
  2. Update **Azure DevOps** pipeline variables with Log Analytics workspace identifiers
  3. Commit release pipeline variables and run

### ***Detailed Technical Steps***

1) Acquire Log Analytics Workspace identifiers:
   a) First option - Log into the **Azure** portal and find newly created Log Analytics workspace name & resource group name
   b) Second option - Log into Azure CLI and run the following command and search for the Log Analytics Workspace name and resource group name in the output:

      ``` bash
      $ az monitor log-analytics workspace list
      ```

2) Log into **Azure DevOps** portal with credentials that have the following permissions:
   - Repository read access to the following projects:
     - Core
     - EnsonoLab
   - Build & Release pipeline write access to the following project:
     - EnsonoLab
   - Read access to the **Azure** service connection for the following project:
     - EnsonoLab

3) Navigate to the EnsonoLab Project [Core_Monitors](https://dev.azure.com/EnsonoDevOps/EnsonoLab/_release?_a=releases&view=mine&definitionId=3) release pipeline

4) In the upper right hand corner of the dashboard click on **Edit**

5) Next click the **variables** tab in the middle of the dashboard

6) Update the following variable key-value pairs:
   - log_analytics_name
   - location
   - resource_group_name

7) After entering variables in the upper right hand corner click **Save** and commit variables. 

8) Finally click on **Create Release** next to the **Save** button to create and run a new release.


## Add new metrics to Log Analytics Workspace(s)

### ***High-Level Steps***

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
  7. Repeat steps 1, 6-7 for additional workspaces that need updating

### ***Detailed Technical Steps***

1) Acquire Log Analytics Workspace identifiers:
   - First option - Log into the **Azure** portal and find newly created Log Analytics workspace name & resource group name
   - Second option - Log into **Azure CLI** and run the following command and search for the Log Analytics Workspace name and resource group name in the output:

      ``` bash
      $ az monitor log-analytics workspace list
      ```

2) Add Terraform code to existing repo:
   - Updating configuration data such as threshold, frequency, etc:
     - In code editor of choice (e.g. vscode) or **Azure DevOps** editor, edit string, bool, integer values for variables such as:
       - `frequency = PT5M`
       - `threshold = 1`
       - `severity = 4`
       - and other code changes as necessary to satisfy work task
    - Add a new Terraform metric alert resource block:
      - In code editor of choice (e.g. vscode) or **Azure DevOps** editor, add a new resource block similar to the example below:
        ```
        resource "azurerm_monitor_scheduled_query_rules_alert" "Azure-APIManagement-FailedRequests" {
          name                = "Azure-APIManagement-FailedRequests"
          location            = var.location
          resource_group_name = data.azurerm_resource_group.rg.name
  
          action {
            action_group           = [azurerm_monitor_action_group.action.id]
            email_subject          = "Azure-APIManagement-FailedRequests"
          }

          data_source_id  = data.azurerm_log_analytics_workspace.log.id
          description     = "Azure-APIManagement-FailedRequests{{name.name}} exceeds the previously estimated average.Please refer to the following reaction process:https://apptemetry/knowledgebase/Article.aspx?id=54321Alerts generate an AIM ticket, viewable here (search via CI or Alert Name):https://apptemetry/AIM/alertsearch.aspx"
          enabled         = true
          query           = <<-QUERY
            AzureMetrics 
            | where TimeGenerated > ago(1min)
            | where MetricName == "FailedRequests"
            | where ResourceProvider contains "Microsoft.ApiManagement/service"
            | summarize by Average, bin(TimeGenerated, 1min), Resource
            | render timechart
          QUERY
          severity        = 1
          frequency       = 5
          time_window     = 5
  
          trigger {
            operator  = "GreaterThanOrEqual"
            threshold = 1
          }
        }
        ```
    - Adding a new sub-directory Azure resource to the module:
      - create a new folder in **Azure DevOps** IDE or code editor using repository naming standard
      - populate folder with the following files:
        - main.tf
        - variables.tf
      - Using examples found in repository or in previous section of this document, populate **Terraform** files with relevant code for the new metric alerts

3) Create a new pull request for code review of newly committed code

4) Log into **Azure DevOps** portal with credentials that have the following permissions:
   - Repository read access to the following projects:
     - Core
     - EnsonoLab
   - Build & Release pipeline write access to the following project:
     - EnsonoLab
   - Read access to the **Azure** service connection for the following project:
     - EnsonoLab

5) Navigate to the EnsonoLab Project [Core_Monitors](https://dev.azure.com/EnsonoDevOps/EnsonoLab/_release?_a=releases&view=mine&definitionId=3) release pipeline

6) In the upper right hand corner of the dashboard click on **Edit**

7) Next click the **variables** tab in the middle of the dashboard

8) Update the following variable key-value pairs:
   - log_analytics_name
   - location
   - resource_group_name

9) After entering variables in the upper right hand corner click **Save** and commit variables. 

10) Finally click on **Create Release** next to the **Save** button to create and run a new release.

11) Repeat steps 1, 6-10 for additional workspaces that need to be updated with metric alert config changes or newly created metric alerts

