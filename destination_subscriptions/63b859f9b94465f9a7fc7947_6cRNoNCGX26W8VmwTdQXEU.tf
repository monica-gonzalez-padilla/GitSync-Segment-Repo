import {
  to = segment_destination_subscription.id-63b859f9b94465f9a7fc7947_6cRNoNCGX26W8VmwTdQXEU
  id = "63b859f9b94465f9a7fc7947:6cRNoNCGX26W8VmwTdQXEU"
}

resource "segment_destination_subscription" "id-63b859f9b94465f9a7fc7947_6cRNoNCGX26W8VmwTdQXEU" {
  action_id            = "rnaHv5Y8rWxCiG6s3D6ShH"
  destination_id       = "63b859f9b94465f9a7fc7947"
  enabled              = true
  model_id             = null
  name                 = "Track Page View"
  reverse_etl_schedule = null
  settings             = jsonencode({})
  trigger              = "type = \"page\""
}