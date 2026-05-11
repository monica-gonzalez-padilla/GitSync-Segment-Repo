import {
  to = segment_destination_subscription.id-640f8709465560ed7874adc8_25f1XybJW4JPow7hs5vc5r
  id = "640f8709465560ed7874adc8:25f1XybJW4JPow7hs5vc5r"
}

resource "segment_destination_subscription" "id-640f8709465560ed7874adc8_25f1XybJW4JPow7hs5vc5r" {
  action_id            = "hhcbf2MTRHEXqkz9AipW4V"
  destination_id       = "640f8709465560ed7874adc8"
  enabled              = true
  model_id             = null
  name                 = "Set Configuration Fields"
  reverse_etl_schedule = null
  settings             = jsonencode({})
  trigger              = "type = \"page\""
}