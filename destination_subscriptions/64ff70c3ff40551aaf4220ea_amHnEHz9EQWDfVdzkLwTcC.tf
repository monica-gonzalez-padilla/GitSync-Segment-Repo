import {
  to = segment_destination_subscription.id-64ff70c3ff40551aaf4220ea_amHnEHz9EQWDfVdzkLwTcC
  id = "64ff70c3ff40551aaf4220ea:amHnEHz9EQWDfVdzkLwTcC"
}

resource "segment_destination_subscription" "id-64ff70c3ff40551aaf4220ea_amHnEHz9EQWDfVdzkLwTcC" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "64ff70c3ff40551aaf4220ea"
  enabled              = true
  model_id             = null
  name                 = "Track Calls- donation made "
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    enable_batching = false
    external_id = {
      "@path" = "$.userId"
    }
    name = {
      "@path" = "$.event"
    }
    properties = {
      donation_amount = {
        "@path" = "$.properties.donation_amount"
      }
      donation_made_date = {
        "@path" = "$.properties.donation_made_date"
      }
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "type = \"track\" and event = \"Donation Made\""
}