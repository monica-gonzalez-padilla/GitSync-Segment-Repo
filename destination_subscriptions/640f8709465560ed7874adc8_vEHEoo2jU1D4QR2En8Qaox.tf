import {
  to = segment_destination_subscription.id-640f8709465560ed7874adc8_vEHEoo2jU1D4QR2En8Qaox
  id = "640f8709465560ed7874adc8:vEHEoo2jU1D4QR2En8Qaox"
}

resource "segment_destination_subscription" "id-640f8709465560ed7874adc8_vEHEoo2jU1D4QR2En8Qaox" {
  action_id            = "8u4W8qspnaZQviyMzQgbtS"
  destination_id       = "640f8709465560ed7874adc8"
  enabled              = false
  model_id             = null
  name                 = "Custom Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    lowercase = false
    name = {
      "@path" = "$.event"
    }
    send_to = true
  })
  trigger = "type = \"track\""
}