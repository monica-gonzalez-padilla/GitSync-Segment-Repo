import {
  to = segment_destination.id-63c99fe90aa56b5945ae6e97
  id = "63c99fe90aa56b5945ae6e97"
}

resource "segment_destination" "id-63c99fe90aa56b5945ae6e97" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "5f7dd6d21ad74f3842b1fc47"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Event Generator- Amplitude"
  settings = jsonencode({
    apiKey    = "••••••••••6321"
    endpoint  = "north_america"
    secretKey = "••••••••••338e"
  })
  source_id = "rCnqDERQ6y6DxDSaEAok9L"
}