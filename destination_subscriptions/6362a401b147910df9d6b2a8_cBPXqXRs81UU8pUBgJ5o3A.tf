import {
  to = segment_destination_subscription.id-6362a401b147910df9d6b2a8_cBPXqXRs81UU8pUBgJ5o3A
  id = "6362a401b147910df9d6b2a8:cBPXqXRs81UU8pUBgJ5o3A"
}

resource "segment_destination_subscription" "id-6362a401b147910df9d6b2a8_cBPXqXRs81UU8pUBgJ5o3A" {
  action_id            = "nhJa95SA9MXa3hi2Vm2acC"
  destination_id       = "6362a401b147910df9d6b2a8"
  enabled              = true
  model_id             = null
  name                 = "Browser Session Tracking"
  reverse_etl_schedule = null
  settings             = jsonencode({})
  trigger              = "type = \"track\" or type = \"identify\" or type = \"group\" or type = \"page\" or type = \"alias\""
}