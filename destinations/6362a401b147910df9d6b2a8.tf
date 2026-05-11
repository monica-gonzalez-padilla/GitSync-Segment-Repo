import {
  to = segment_destination.id-6362a401b147910df9d6b2a8
  id = "6362a401b147910df9d6b2a8"
}

resource "segment_destination" "id-6362a401b147910df9d6b2a8" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "5f7dd6d21ad74f3842b1fc47"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "My Amplitude"
  settings = jsonencode({
    apiKey    = "••••••••••6321"
    endpoint  = "north_america"
    secretKey = "••••••••••338e"
  })
  source_id = "dBwf6vdq6Sh9fRMbNV7WJ4"
}