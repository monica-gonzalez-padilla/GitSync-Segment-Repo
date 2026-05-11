import {
  to = segment_destination_subscription.id-640f8709465560ed7874adc8_vQgpgZLnwuHYtqp8ZsSMcB
  id = "640f8709465560ed7874adc8:vQgpgZLnwuHYtqp8ZsSMcB"
}

resource "segment_destination_subscription" "id-640f8709465560ed7874adc8_vQgpgZLnwuHYtqp8ZsSMcB" {
  action_id            = "6thqfbUiJonUWbjjEwb4ge"
  destination_id       = "640f8709465560ed7874adc8"
  enabled              = true
  model_id             = null
  name                 = "Sign Up"
  reverse_etl_schedule = null
  settings = jsonencode({
    method = {
      "@path" = "$.properties.method"
    }
    user_id = {
      "@if" = {
        else = {
          "@path" = "$.anonymousId"
        }
        exists = {
          "@path" = "$.userId"
        }
        then = {
          "@path" = "$.userId"
        }
      }
    }
    user_properties = {
      origin = {
        "@path" = "$.properties.origin"
      }
    }
  })
  trigger = "type = \"track\" and event = \"Signed Up\""
}