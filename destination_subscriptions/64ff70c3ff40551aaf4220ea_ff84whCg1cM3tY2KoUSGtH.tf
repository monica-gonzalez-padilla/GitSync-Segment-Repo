import {
  to = segment_destination_subscription.id-64ff70c3ff40551aaf4220ea_ff84whCg1cM3tY2KoUSGtH
  id = "64ff70c3ff40551aaf4220ea:ff84whCg1cM3tY2KoUSGtH"
}

resource "segment_destination_subscription" "id-64ff70c3ff40551aaf4220ea_ff84whCg1cM3tY2KoUSGtH" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "64ff70c3ff40551aaf4220ea"
  enabled              = true
  model_id             = null
  name                 = "Track Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    email = {
      "@path" = "$.traits.email"
    }
    enable_batching = true
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
      month = {
        "@path" = "$.properties.month"
      }
      recurring_donation = {
        "@path" = "$.properties.recurring_donation"
      }
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "type = \"track\" and event = \"Donation Made\""
}