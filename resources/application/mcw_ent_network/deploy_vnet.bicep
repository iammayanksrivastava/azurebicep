param location string = resourceGroup().location


module virtualNetwork '../../core/virtual_network/main.bicep' ={
  name: vnetName
  params: {
    location: location
    vnetName
  }
}
