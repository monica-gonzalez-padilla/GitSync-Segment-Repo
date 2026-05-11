import {
  to = segment_destination_subscription.id-650b312753efebd8d9fbc9d8_pKtBWWKhxVBPHfSPR7U6sj
  id = "650b312753efebd8d9fbc9d8:pKtBWWKhxVBPHfSPR7U6sj"
}

resource "segment_destination_subscription" "id-650b312753efebd8d9fbc9d8_pKtBWWKhxVBPHfSPR7U6sj" {
  action_id            = "3MrS3Se3PAaxL4wpQN93gA"
  destination_id       = "650b312753efebd8d9fbc9d8"
  enabled              = false
  model_id             = null
  name                 = "Favorite color blue mapping"
  reverse_etl_schedule = null
  settings = jsonencode({
    campaignId = {
      "@path" = "$.properties.campaignId"
    }
    createdAt = {
      "@path" = "$.timestamp"
    }
    dataFields = {
      "@path" = "$.properties"
    }
    email = {
      "@if" = {
        else = {
          "@path" = "$.context.traits.email"
        }
        exists = {
          "@path" = "$.properties.email"
        }
        then = {
          "@path" = "$.properties.email"
        }
      }
    }
    eventName = {
      "@path" = "$.event"
    }
    id = {
      "@path" = "$.messageId"
    }
    templateId = {
      "@path" = "$.properties.templateId"
    }
    userId = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"track\" and event = \"Audience Entered\" and properties.favorite_color_blue = true"
}