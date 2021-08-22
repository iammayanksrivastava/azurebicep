param location string = resourceGroup().location
param storageAccountName string = 'factorsense${uniqueString(resourceGroup().id)}'
param storageAccountSKU string = (environmentType == 'prod') ? 'Standard_GRS' : 'Standard_LRS'

@allowed([
  'nonprod'
  'prod'
])

param environmentType string


module storageAccount 'modules/storage_account/storageAccount.bicep' = {
  name: 'storageAccount'
  params: {
    location: location
    storageAccountName: storageAccountName
    storageAccountSKU: storageAccountSKU
  }
}
