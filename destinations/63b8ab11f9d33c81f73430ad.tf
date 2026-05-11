import {
  to = segment_destination.id-63b8ab11f9d33c81f73430ad
  id = "63b8ab11f9d33c81f73430ad"
}

resource "segment_destination" "id-63b8ab11f9d33c81f73430ad" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "632b1116e0cb83902f3fd717"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name      = "HubSpot Cloud Mode for Button Clicker 1"
  settings  = jsonencode({})
  source_id = "5Q3P5v2mfBPGwtWEMEGD4q"
}