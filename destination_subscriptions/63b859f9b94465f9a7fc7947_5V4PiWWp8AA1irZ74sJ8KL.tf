import {
  to = segment_destination_subscription.id-63b859f9b94465f9a7fc7947_5V4PiWWp8AA1irZ74sJ8KL
  id = "63b859f9b94465f9a7fc7947:5V4PiWWp8AA1irZ74sJ8KL"
}

resource "segment_destination_subscription" "id-63b859f9b94465f9a7fc7947_5V4PiWWp8AA1irZ74sJ8KL" {
  action_id            = "nQrUkFqLZ6Zv6JaZGYTBDd"
  destination_id       = "63b859f9b94465f9a7fc7947"
  enabled              = true
  model_id             = null
  name                 = "Track Custom Behavioral Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    name = {
      "@path" = "$.event"
    }
    properties = {
      "@path" = "$.properties"
    }
  })
  trigger = "type = \"track\" and event = \"Signed Up\""
}