import {
  to = segment_destination.id-63cb00a76db0c4c8a7e779d1
  id = "63cb00a76db0c4c8a7e779d1"
}

resource "segment_destination" "id-63cb00a76db0c4c8a7e779d1" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "5f7dd6d21ad74f3842b1fc47"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Amplitude (Actions)"
  settings = jsonencode({
    apiKey    = ""
    endpoint  = "north_america"
    secretKey = ""
  })
  source_id = "uRjPaDWwXS8XcRJ8T9tixx"
}