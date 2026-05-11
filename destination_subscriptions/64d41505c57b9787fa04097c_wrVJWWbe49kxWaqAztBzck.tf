import {
  to = segment_destination_subscription.id-64d41505c57b9787fa04097c_wrVJWWbe49kxWaqAztBzck
  id = "64d41505c57b9787fa04097c:wrVJWWbe49kxWaqAztBzck"
}

resource "segment_destination_subscription" "id-64d41505c57b9787fa04097c_wrVJWWbe49kxWaqAztBzck" {
  action_id            = "hhcbf2MTRHEXqkz9AipW4V"
  destination_id       = "64d41505c57b9787fa04097c"
  enabled              = true
  model_id             = null
  name                 = "Set Configuration Fields"
  reverse_etl_schedule = null
  settings             = jsonencode({})
  trigger              = "type = \"page\" or type = \"identify\""
}