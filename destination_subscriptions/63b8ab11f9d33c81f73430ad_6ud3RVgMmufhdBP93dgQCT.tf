import {
  to = segment_destination_subscription.id-63b8ab11f9d33c81f73430ad_6ud3RVgMmufhdBP93dgQCT
  id = "63b8ab11f9d33c81f73430ad:6ud3RVgMmufhdBP93dgQCT"
}

resource "segment_destination_subscription" "id-63b8ab11f9d33c81f73430ad_6ud3RVgMmufhdBP93dgQCT" {
  action_id            = "fRn8RWTicuG6dpma5JKi9d"
  destination_id       = "63b8ab11f9d33c81f73430ad"
  enabled              = true
  model_id             = null
  name                 = "Create Custom Object Record"
  reverse_etl_schedule = null
  settings = jsonencode({
    objectType = "p6318470_refinance_offers"
    properties = {
      offer_id = {
        "@path" = "$.properties.offer_id"
      }
      offer_stage = {
        "@path" = "$.properties.offer_stage"
      }
    }
  })
  trigger = "event = \"Refinance Offer Presented\""
}