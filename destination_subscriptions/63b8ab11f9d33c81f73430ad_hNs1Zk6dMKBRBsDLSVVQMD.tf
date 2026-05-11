import {
  to = segment_destination_subscription.id-63b8ab11f9d33c81f73430ad_hNs1Zk6dMKBRBsDLSVVQMD
  id = "63b8ab11f9d33c81f73430ad:hNs1Zk6dMKBRBsDLSVVQMD"
}

resource "segment_destination_subscription" "id-63b8ab11f9d33c81f73430ad_hNs1Zk6dMKBRBsDLSVVQMD" {
  action_id            = "fRn8RWTicuG6dpma5JKi9d"
  destination_id       = "63b8ab11f9d33c81f73430ad"
  enabled              = true
  model_id             = null
  name                 = "Create Custom Object Record"
  reverse_etl_schedule = null
  settings = jsonencode({
    objectType = "p6318470_assets"
    properties = {
      asset_name = {
        "@path" = "$.properties.Asset_name"
      }
      vin = {
        "@path" = "$.properties.VIN"
      }
    }
  })
  trigger = "event = \"Vehicle information Added\""
}