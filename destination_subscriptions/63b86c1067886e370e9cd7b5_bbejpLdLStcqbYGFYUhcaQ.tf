import {
  to = segment_destination_subscription.id-63b86c1067886e370e9cd7b5_bbejpLdLStcqbYGFYUhcaQ
  id = "63b86c1067886e370e9cd7b5:bbejpLdLStcqbYGFYUhcaQ"
}

resource "segment_destination_subscription" "id-63b86c1067886e370e9cd7b5_bbejpLdLStcqbYGFYUhcaQ" {
  action_id            = "fRn8RWTicuG6dpma5JKi9d"
  destination_id       = "63b86c1067886e370e9cd7b5"
  enabled              = false
  model_id             = null
  name                 = "Upsert Custom Object Record"
  reverse_etl_schedule = null
  settings = jsonencode({
    createNewCustomRecord = true
  })
  trigger = "event = \"\""
}