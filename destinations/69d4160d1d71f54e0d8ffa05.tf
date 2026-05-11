import {
  to = segment_destination.id-69d4160d1d71f54e0d8ffa05
  id = "69d4160d1d71f54e0d8ffa05"
}

resource "segment_destination" "id-69d4160d1d71f54e0d8ffa05" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "68f5d79fdedace619288c2ca"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "BigQuery (Activation)"
  settings = jsonencode({
    warehouseId = "7qQ7UB2AkerZfCC31BjkK8"
  })
  source_id = "uRjPaDWwXS8XcRJ8T9tixx"
}