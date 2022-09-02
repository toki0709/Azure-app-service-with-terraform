# Create Azure App service with Terraform provisioning 

### Steps to follow
- az login
- Check if storage account exists
- Following info will go to Azurerm backend (storage account, container name, key, access key)
  - Create resource group  
    az group create --name $RESOURCE_GROUP_NAME --location $LOCATION
  
  - Create storage account  
    az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob
  
  - Get storage account key  
    az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query '[0].value' -o tsv
    
- Creating a Service Principal using the Azure CLI 
  - az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/SUBSCRIPTION_ID"
  - {
  - 
        "appId": "00000000-0000-0000-0000-000000000000",
        "displayName": "azure-cli-2017-06-05-10-41-15",
        "name": "http://azure-cli-2017-06-05-10-41-15",
        "password": "0000-0000-0000-0000-000000000000",
        "tenant": "00000000-0000-0000-0000-000000000000"
    }
  - appId is the client_id defined above.
  - password is the client_secret defined above.
  - tenant is the tenant_id defined above.

- terraform init
- terraform validate
- terraform plan -out < filename >
- terraform apply < filename >
- terraform destroy

#### First few steps can be executed by shell scripts.






