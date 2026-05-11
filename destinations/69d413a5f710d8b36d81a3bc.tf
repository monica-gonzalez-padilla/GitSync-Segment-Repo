import {
  to = segment_destination.id-69d413a5f710d8b36d81a3bc
  id = "69d413a5f710d8b36d81a3bc"
}

resource "segment_destination" "id-69d413a5f710d8b36d81a3bc" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "68f5d79fdedace619288c2ca"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "\"BigQuery Demo Instance\" (Activation)"
  settings = jsonencode({
    warehouseId = "oEn3sjLa6AkmqfVm851NQL"
  })
  source_id = "uRjPaDWwXS8XcRJ8T9tixx"
}