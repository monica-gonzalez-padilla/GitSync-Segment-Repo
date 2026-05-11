import {
  to = segment_destination_subscription.id-64dbc2640e52410e975fe369_sFWpwwzJmRXx1278khc2V
  id = "64dbc2640e52410e975fe369:sFWpwwzJmRXx1278khc2V"
}

resource "segment_destination_subscription" "id-64dbc2640e52410e975fe369_sFWpwwzJmRXx1278khc2V" {
  action_id            = "dz7EjGgmjmVaBBs9tFzPg5"
  destination_id       = "64dbc2640e52410e975fe369"
  enabled              = false
  model_id             = null
  name                 = "Create Audience"
  reverse_etl_schedule = null
  settings = jsonencode({
    custom_audience_name   = "custom name"
    id_type                = "EMAIL_SHA256"
    selected_advertiser_id = "1234567"
  })
  trigger = "event = \"Create Audience\""
}