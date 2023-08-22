resource "azapi_resource" "symbolicname" {
  type = "Microsoft.MachineLearningServices/workspaces@2022-12-01-preview"
  name = "string"
  location = "string"
  parent_id = "string"
  tags = {
    tagName1 = "tagValue1"
    tagName2 = "tagValue2"
  }
  identity {
    type = "string"
    identity_ids = []
  }
  body = jsonencode({
    properties = {
      allowPublicAccessWhenBehindVnet = bool
      applicationInsights = "string"
      containerRegistry = "string"
      description = "string"
      discoveryUrl = "string"
      encryption = {
        identity = {
          userAssignedIdentity = "string"
        }
        keyVaultProperties = {
          identityClientId = "string"
          keyIdentifier = "string"
          keyVaultArmId = "string"
        }
        status = "string"
      }
      featureStoreSettings = {
        allowRoleAssignmentsOnResourceGroupLevel = bool
        computeRuntime = {
          sparkRuntimeVersion = "string"
        }
        offlineStoreConnectionName = "string"
        onlineStoreConnectionName = "string"
      }
      friendlyName = "string"
      hbiWorkspace = bool
      imageBuildCompute = "string"
      keyVault = "string"
      primaryUserAssignedIdentity = "string"
      publicNetworkAccess = "string"
      serviceManagedResourcesSettings = {
        cosmosDb = {
          collectionsThroughput = int
        }
      }
      sharedPrivateLinkResources = [
        {
          name = "string"
          properties = {
            groupId = "string"
            privateLinkResourceId = "string"
            requestMessage = "string"
            status = "string"
          }
        }
      ]
      storageAccount = "string"
      systemDatastoresAuthMode = "string"
      v1LegacyMode = bool
    }
    sku = {
      capacity = int
      family = "string"
      name = "string"
      size = "string"
      tier = "string"
    }
    kind = "string"
  })
}
