import {
  to = segment_destination_subscription.id-650b312753efebd8d9fbc9d8_vRpDncFVQheXun6hvmGx6
  id = "650b312753efebd8d9fbc9d8:vRpDncFVQheXun6hvmGx6"
}

resource "segment_destination_subscription" "id-650b312753efebd8d9fbc9d8_vRpDncFVQheXun6hvmGx6" {
  action_id            = "3MrS3Se3PAaxL4wpQN93gA"
  destination_id       = "650b312753efebd8d9fbc9d8"
  enabled              = true
  model_id             = null
  name                 = "Audience Entered/ Exited"
  reverse_etl_schedule = null
  settings = jsonencode({
    campaignId = {
      "@path" = "$.properties.campaignId"
    }
    createdAt = {
      "@path" = "$.timestamp"
    }
    dataFields = {
      "First Name" = {
        "@path" = "$.properties.firstName"
      }
      "Last Name" = {
        "@path" = "$.properties.lastName"
      }
      "Part of favorite color red audience" = {
        "@path" = "$.properties.favorite_color_red"
      }
      "audience key" = {
        "@path" = "$.properties.audience_key"
      }
      email = {
        "@path" = "$.context.traits.email"
      }
      "part of favorite color blue audience" = {
        "@path" = "$.properties.favorite_color_blue"
      }
      phone = {
        "@path" = "$.properties.phone"
      }
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
  trigger = "type = \"track\" or event = \"Audience Entered\" or event = \"Audience Exited\""
}