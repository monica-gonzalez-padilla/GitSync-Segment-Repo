import {
  to = segment_destination_subscription.id-635b05d7dd50080631b2c46d_u7nhWxFJLZdFebqMvVcMrG
  id = "635b05d7dd50080631b2c46d:u7nhWxFJLZdFebqMvVcMrG"
}

resource "segment_destination_subscription" "id-635b05d7dd50080631b2c46d_u7nhWxFJLZdFebqMvVcMrG" {
  action_id            = "nhJa95SA9MXa3hi2Vm2acC"
  destination_id       = "635b05d7dd50080631b2c46d"
  enabled              = true
  model_id             = null
  name                 = "Browser Session Tracking"
  reverse_etl_schedule = null
  settings             = jsonencode({})
  trigger              = "type = \"track\" or type = \"identify\" or type = \"group\" or type = \"page\" or type = \"alias\""
}