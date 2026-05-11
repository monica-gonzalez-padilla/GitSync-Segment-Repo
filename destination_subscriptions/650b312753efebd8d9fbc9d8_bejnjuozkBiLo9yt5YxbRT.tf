import {
  to = segment_destination_subscription.id-650b312753efebd8d9fbc9d8_bejnjuozkBiLo9yt5YxbRT
  id = "650b312753efebd8d9fbc9d8:bejnjuozkBiLo9yt5YxbRT"
}

resource "segment_destination_subscription" "id-650b312753efebd8d9fbc9d8_bejnjuozkBiLo9yt5YxbRT" {
  action_id            = "3MrS3Se3PAaxL4wpQN93gA"
  destination_id       = "650b312753efebd8d9fbc9d8"
  enabled              = true
  model_id             = null
  name                 = "Track Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_size = 1001
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
    enable_batching = true
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
  trigger = "type = \"track\""
}