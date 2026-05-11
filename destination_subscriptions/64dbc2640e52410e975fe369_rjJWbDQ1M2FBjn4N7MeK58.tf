import {
  to = segment_destination_subscription.id-64dbc2640e52410e975fe369_rjJWbDQ1M2FBjn4N7MeK58
  id = "64dbc2640e52410e975fe369:rjJWbDQ1M2FBjn4N7MeK58"
}

resource "segment_destination_subscription" "id-64dbc2640e52410e975fe369_rjJWbDQ1M2FBjn4N7MeK58" {
  action_id            = "hHwktvrTqqBDpD7pCfcB1L"
  destination_id       = "64dbc2640e52410e975fe369"
  enabled              = false
  model_id             = null
  name                 = "Add Users"
  reverse_etl_schedule = null
  settings = jsonencode({
    advertising_id = {
      "@path" = "$.context.device.advertisingId"
    }
    email = {
      "@path" = "$.context.traits.email"
    }
    enable_batching = true
    event_name = {
      "@path" = "$.event"
    }
    send_advertising_id = true
    send_email          = true
  })
  trigger = "event = \"Audience Entered\""
}