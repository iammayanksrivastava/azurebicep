param location string = resourceGroup().location
param vnetName string = 'vnet-${uniqueString(resourceGroup().id)}'
param vnetAddressPrefix string = '10.2.0.0/16'
param subnetname1 string = 'subnet-${uniqueString(resourceGroup().id)}'
param subnetAddressPrefix1 string = '10.2.0.0/24'



module virtualNetwork '../resources/core/vnet.bicep' = {
  name: 'vnetName'
  params: {
    location: location
    vnetName: vnetName
    vnetAddressPrefix: vnetAddressPrefix
    subnetname1: subnetname1
    subnetAddressPrefix1: subnetAddressPrefix1
  }
}
