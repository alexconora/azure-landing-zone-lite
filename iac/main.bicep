param location string = resourceGroup().location

module networking './networking.bicep' = {
  name: 'networkingDeployment'
  params: {
    location: location
  }
}
