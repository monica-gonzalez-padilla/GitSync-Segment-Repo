import {
  to = segment_destination_subscription.id-6440616b53f0893d1b89dd4c_7WxaDQYjrdwsipeQ6fa3ga
  id = "6440616b53f0893d1b89dd4c:7WxaDQYjrdwsipeQ6fa3ga"
}

resource "segment_destination_subscription" "id-6440616b53f0893d1b89dd4c_7WxaDQYjrdwsipeQ6fa3ga" {
  action_id            = "ih1XmCi3dEQwnAHcMUBhx9"
  destination_id       = "6440616b53f0893d1b89dd4c"
  enabled              = true
  model_id             = null
  name                 = "Send Event to Data Extension"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_size      = 10
    enable_batching = false
    key             = "981D1429-4488-4D9D-9031-76ED28933C62"
    keys = {
      audience_key = {
        "@path" = "$.properties.audience_key"
      }
      email = {
        "@path" = "$.context.traits.email"
      }
    }
    values = {
      Event = {
        "@path" = "$.event"
      }
      user_Id = {
        "@path" = "$.userId"
      }
    }
  })
  trigger = "event = \"Audience Entered\""
}