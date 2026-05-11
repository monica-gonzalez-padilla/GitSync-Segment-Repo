import {
  to = segment_destination_subscription.id-63b859f9b94465f9a7fc7947_cjaTsv2YM51f2mSp9HNG8A
  id = "63b859f9b94465f9a7fc7947:cjaTsv2YM51f2mSp9HNG8A"
}

resource "segment_destination_subscription" "id-63b859f9b94465f9a7fc7947_cjaTsv2YM51f2mSp9HNG8A" {
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
      "@path" = "$.properties.form_name"
    }
  })
  trigger = "type = \"track\" and event = \"Form Submitted\""
}