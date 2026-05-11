import {
  to = segment_destination_subscription.id-69e00857b0bd4d06d922de38_nXQxFwCvka3QroFkU6574s
  id = "69e00857b0bd4d06d922de38:nXQxFwCvka3QroFkU6574s"
}

resource "segment_destination_subscription" "id-69e00857b0bd4d06d922de38_nXQxFwCvka3QroFkU6574s" {
  action_id            = "3MrS3Se3PAaxL4wpQN93gA"
  destination_id       = "69e00857b0bd4d06d922de38"
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
  trigger = "type = \"track\" and event != \"Account Updated\""
}