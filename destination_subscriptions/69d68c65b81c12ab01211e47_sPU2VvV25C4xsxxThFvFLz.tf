import {
  to = segment_destination_subscription.id-69d68c65b81c12ab01211e47_sPU2VvV25C4xsxxThFvFLz
  id = "69d68c65b81c12ab01211e47:sPU2VvV25C4xsxxThFvFLz"
}

resource "segment_destination_subscription" "id-69d68c65b81c12ab01211e47_sPU2VvV25C4xsxxThFvFLz" {
  action_id            = "3TxC6VEBZdWk8SRR1S9qVJ"
  destination_id       = "69d68c65b81c12ab01211e47"
  enabled              = true
  model_id             = null
  name                 = "Favor Delivery Test"
  reverse_etl_schedule = null
  settings = jsonencode({
    event = {
      "@path" = "$.event"
    }
    messageId = {
      "@path" = "$.messageId"
    }
    properties = {
      event_name = {
        "@path" = "$.event"
      }
      journey_context = {
        "@json" = {
          mode = "encode"
          value = {
            "@path" = "$.properties.journey_context"
          }
        }
      }
      journey_metadata = {
        "@json" = {
          mode = "encode"
          value = {
            "@path" = "$.properties.journey_metadata"
          }
        }
      }
      journey_path = "B"
      personas_activation_id = {
        "@path" = "$.context.personas.event_emitter_id"
      }
      personas_computation_class = {
        "@path" = "$.context.personas.computation_class"
      }
      personas_computation_id = {
        "@path" = "$.context.personas.computation_id"
      }
      personas_computation_key = {
        "@path" = "$.context.personas.computation_key"
      }
      user_id = {
        "@path" = "$.userId"
      }
    }
    receivedAt = {
      "@path" = "$.receivedAt"
    }
    type = {
      "@path" = "$.type"
    }
  })
  trigger = "context.personas.event_emitter_id = \"ee_3C5Mi65ue0kaoIQFdm9u2HElTPL\""
}