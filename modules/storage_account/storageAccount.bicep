param location string 
param storageAccountName string
param storageAccountSKU string 

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
  sku: {
    name:storageAccountSKU

  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}


output storageAccountName string = storageAccount.name
