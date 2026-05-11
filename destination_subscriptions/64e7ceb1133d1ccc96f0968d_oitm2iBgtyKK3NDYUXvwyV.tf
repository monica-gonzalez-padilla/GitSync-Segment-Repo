import {
  to = segment_destination_subscription.id-64e7ceb1133d1ccc96f0968d_oitm2iBgtyKK3NDYUXvwyV
  id = "64e7ceb1133d1ccc96f0968d:oitm2iBgtyKK3NDYUXvwyV"
}

resource "segment_destination_subscription" "id-64e7ceb1133d1ccc96f0968d_oitm2iBgtyKK3NDYUXvwyV" {
  action_id      = "oiFvX4YXwyaPVysi1t7mtz"
  destination_id = "64e7ceb1133d1ccc96f0968d"
  enabled        = false
  model_id       = "vrU7Sd7jUdct6s5MnfzVtX"
  name           = "Send Track"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "1h"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({})
  trigger  = "type = \"track\""
}