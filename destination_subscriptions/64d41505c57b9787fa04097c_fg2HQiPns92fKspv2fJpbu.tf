import {
  to = segment_destination_subscription.id-64d41505c57b9787fa04097c_fg2HQiPns92fKspv2fJpbu
  id = "64d41505c57b9787fa04097c:fg2HQiPns92fKspv2fJpbu"
}

resource "segment_destination_subscription" "id-64d41505c57b9787fa04097c_fg2HQiPns92fKspv2fJpbu" {
  action_id            = "hhcbf2MTRHEXqkz9AipW4V"
  destination_id       = "64d41505c57b9787fa04097c"
  enabled              = false
  model_id             = null
  name                 = "Set Configuration Fields"
  reverse_etl_schedule = null
  settings             = jsonencode({})
  trigger              = "type = \"page\" or type = \"identify\""
}