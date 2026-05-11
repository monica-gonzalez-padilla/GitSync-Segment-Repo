import {
  to = segment_destination_subscription.id-640f8709465560ed7874adc8_gHBpZvUubaX4qMMR9ZzkQ4
  id = "640f8709465560ed7874adc8:gHBpZvUubaX4qMMR9ZzkQ4"
}

resource "segment_destination_subscription" "id-640f8709465560ed7874adc8_gHBpZvUubaX4qMMR9ZzkQ4" {
  action_id            = "8u4W8qspnaZQviyMzQgbtS"
  destination_id       = "640f8709465560ed7874adc8"
  enabled              = true
  model_id             = null
  name                 = "Custom Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    lowercase = false
    name = {
      "@path" = "$.event"
    }
  })
  trigger = "type = \"track\" and event = \"Button Clicked- Monica\""
}