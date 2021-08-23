param location string = resourceGroup().location
param vnetName string = 'vnet-${uniqueString(resourceGroup().id)}'
param vnetAddressPrefix string = '10.2.0.0/16'
param subnetname1 string = 'subnet-${uniqueString(resourceGroup().id)}'
param subnetAddressPrefix1 string = '10.2.0.0/24'
param storageAccountName string = 'stor${uniqueString(resourceGroup().id)}'
param storageAccountSKU string = (environmentType == 'prod') ? 'Standard_GRS' : 'Standard_LRS'


@allowed([
  'nonprod'
  'prod'
])

param environmentType string


module virtualNetwork 'modules/vnet/main.bicep' = {
  name: 'storageAccountName'
  params: {
    location: location
    vnetName: vnetName
    vnetAddressPrefix: vnetAddressPrefix
    subnetname1: subnetname1
    subnetAddressPrefix1: subnetAddressPrefix1
  }
}



module storageAccount 'modules/storage_account/storageAccount.bicep' = {
  name: 'storageAccount'
  params: {
    location: location
    storageAccountName: storageAccountName
    storageAccountSKU: storageAccountSKU
    subnetId:resourceId('Microsoft.Network/virtualNetworks/subnets', vnetName, subnetname1) 
  }
}
