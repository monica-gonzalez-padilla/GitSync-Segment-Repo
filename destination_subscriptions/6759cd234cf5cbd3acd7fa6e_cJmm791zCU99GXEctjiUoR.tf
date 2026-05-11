import {
  to = segment_destination_subscription.id-6759cd234cf5cbd3acd7fa6e_cJmm791zCU99GXEctjiUoR
  id = "6759cd234cf5cbd3acd7fa6e:cJmm791zCU99GXEctjiUoR"
}

resource "segment_destination_subscription" "id-6759cd234cf5cbd3acd7fa6e_cJmm791zCU99GXEctjiUoR" {
  action_id            = "f5syVWBeSA4KrrH3Yv5Q2N"
  destination_id       = "6759cd234cf5cbd3acd7fa6e"
  enabled              = true
  model_id             = null
  name                 = "Track Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_size      = 1000
    enable_batching = false
    metric_name = {
      "@path" = "$.event"
    }
    profile = {
      email = {
        "@if" = {
          blank = {
            "@path" = "$.context.traits.email"
          }
          else = {
            "@path" = "$.properties.email"
          }
          then = {
            "@path" = "$.context.traits.email"
          }
        }
      }
      favorite_color = {
        "@path" = "$.properties.favoriteColor"
      }
      favorite_food = {
        "@path" = "$.properties.favoriteFood"
      }
    }
    properties = {
      "@path" = "$.properties"
    }
    time = {
      "@path" = "$.timestamp"
    }
    unique_id = {
      "@path" = "$.messageId"
    }
  })
  trigger = "type = \"track\" and event = \"Audience Entered\""
}