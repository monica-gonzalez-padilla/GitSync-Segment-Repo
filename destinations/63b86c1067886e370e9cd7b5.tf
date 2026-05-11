import {
  to = segment_destination.id-63b86c1067886e370e9cd7b5
  id = "63b86c1067886e370e9cd7b5"
}

resource "segment_destination" "id-63b86c1067886e370e9cd7b5" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "632b1116e0cb83902f3fd717"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name      = "HubSpot 6318470 Cloud Mode Actions for HTTP Source"
  settings  = jsonencode({})
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}