import {
  to = segment_destination_subscription.id-6440616b53f0893d1b89dd4c_i3TFkqpck7xiaRio4dPPWU
  id = "6440616b53f0893d1b89dd4c:i3TFkqpck7xiaRio4dPPWU"
}

resource "segment_destination_subscription" "id-6440616b53f0893d1b89dd4c_i3TFkqpck7xiaRio4dPPWU" {
  action_id            = "w71TA2NBTe31vEdejf99Jy"
  destination_id       = "6440616b53f0893d1b89dd4c"
  enabled              = true
  model_id             = null
  name                 = "Send Contact to Data Extension"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_size      = 10
    enable_batching = false
    key             = "0AE4FB8E-B568-4EC4-9091-021631761791"
    keys = {
      contactKey = {
        "@path" = "$.userId"
      }
      email = {
        "@path" = "$.traits.email"
      }
    }
    values = {
      email = {
        "@path" = "$.traits.email"
      }
      favorite_color_blue = "traits.favorite_color_blue"
    }
  })
  trigger = "type = \"identify\""
}