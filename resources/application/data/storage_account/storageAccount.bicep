param location string 
param storageAccountName string
param storageAccountSKU string 
param subnetId string

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
  sku: {
    name:storageAccountSKU

  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
    allowBlobPublicAccess:false
    isHnsEnabled:true

    networkAcls: {
      bypass: 'None'
       virtualNetworkRules: [
        {
          id: subnetId
          action: 'Allow'
        }
      ]
      defaultAction:'Deny'
    }

  }
}

