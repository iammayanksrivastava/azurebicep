param location string 
param vnetName string
param vnetAddressPrefix string
param subnetAddressPrefix1 string
param subnetname1 string

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2021-02-01'={
  name: vnetName
  location: location
  properties:{
    addressSpace:{
      addressPrefixes: [
        vnetAddressPrefix
      ]
    }
    subnets: [
      {
        name: subnetname1
        properties:{
          addressPrefix: subnetAddressPrefix1
        }
      }
    ]
  }
}
