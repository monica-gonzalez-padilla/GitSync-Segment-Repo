import {
  to = segment_destination_subscription.id-6440616b53f0893d1b89dd4c_nBJYd37F3TK4kwUKVfMgYT
  id = "6440616b53f0893d1b89dd4c:nBJYd37F3TK4kwUKVfMgYT"
}

resource "segment_destination_subscription" "id-6440616b53f0893d1b89dd4c_nBJYd37F3TK4kwUKVfMgYT" {
  action_id            = "ih1XmCi3dEQwnAHcMUBhx9"
  destination_id       = "6440616b53f0893d1b89dd4c"
  enabled              = true
  model_id             = null
  name                 = "Send Event to Data Extension"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_size      = 10
    enable_batching = false
    key             = "C2BDC48A-7CDE-4A5A-9F88-A7CD399FB77B"
    keys = {
      email = {
        "@path" = "$.context.traits.email"
      }
      userId = {
        "@path" = "$.userId"
      }
    }
    values = {
      Audience_favorite_color_red = {
        "@path" = "$.properties.favorite_color_red"
      }
    }
  })
  trigger = "type = \"track\" and properties.audience_key = \"favorite_color_red\""
}