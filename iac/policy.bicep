targetScope = 'subscription'

param policyName string = 'require-owner-tag'

resource policyAssignment 'Microsoft.Authorization/policyAssignments@2022-06-01' = {
  name: policyName
  properties: {
    displayName: 'Require owner tag on resources'
    policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/871b6d14-10aa-478d-b590-94f262ecfa99'
    parameters: {
      tagName: {
        value: 'owner'
      }
    }
  }
}
