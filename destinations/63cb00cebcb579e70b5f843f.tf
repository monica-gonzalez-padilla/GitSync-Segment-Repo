import {
  to = segment_destination.id-63cb00cebcb579e70b5f843f
  id = "63cb00cebcb579e70b5f843f"
}

resource "segment_destination" "id-63cb00cebcb579e70b5f843f" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "632b1116e0cb83902f3fd717"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name      = "Engage --> HubSpot Cloud Mode (Actions)"
  settings  = jsonencode({})
  source_id = "uRjPaDWwXS8XcRJ8T9tixx"
}