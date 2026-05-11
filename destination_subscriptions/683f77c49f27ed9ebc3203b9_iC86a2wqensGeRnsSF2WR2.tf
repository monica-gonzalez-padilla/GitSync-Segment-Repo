import {
  to = segment_destination_subscription.id-683f77c49f27ed9ebc3203b9_iC86a2wqensGeRnsSF2WR2
  id = "683f77c49f27ed9ebc3203b9:iC86a2wqensGeRnsSF2WR2"
}

resource "segment_destination_subscription" "id-683f77c49f27ed9ebc3203b9_iC86a2wqensGeRnsSF2WR2" {
  action_id            = "3FUdT3XKFUi3WcdJDZkzd8"
  destination_id       = "683f77c49f27ed9ebc3203b9"
  enabled              = true
  model_id             = null
  name                 = "Update Profile"
  reverse_etl_schedule = null
  settings = jsonencode({
    traits = {
      audience_name = {
        "@path" = "$.properties.audience_key"
      }
      segment_name_audience = {
        "@path" = "$.properties.Segment_name_audience"
      }
    }
    user_id = {
      "@if" = {
        else = {
          "@path" = "$.userId"
        }
        exists = {
          "@path" = "$.anonymousId"
        }
        then = {
          "@path" = "$.anonymousId"
        }
      }
    }
  })
  trigger = "event = \"Audience Entered\" or event = \"Audience Exited\""
}