@minLength(3)
@maxLength(24)
@description('Provide a name for the storage account. Use only lower case letters and numbers. The name must be unique across Azure.')
param storageName string





resource virtualNetwork 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: 'virtual-network-mayank'
  location: resourceGroup().location
  properties:{
    addressSpace:{
      addressPrefixes:[
        '10.0.0.0/16'
      ]
    }
    subnets:[
      {
        name:'subnet-1'
        properties:{
          addressPrefix:'10.0.0.0/24'
        }
      }
      {
        name: 'subnet-2'
        properties:{
          addressPrefix:'10.0.1.0/24'
        }
      }
    ]
  }
}

param subnet1 string
output subnet1 string = virtualNetwork.properties.subnets[0].id

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01'= {
  name: storageName     
  location: resourceGroup().location
  sku: {
    name:'Standard_LRS'
  }
  kind:'StorageV2'
  properties:{
    isHnsEnabled: true
    networkAcls:{
      defaultAction:'Allow'
      virtualNetworkRules:[ {
        id: subnet1
        action: 'Allow'
      }
    ]

    }
  }
  
}
  
