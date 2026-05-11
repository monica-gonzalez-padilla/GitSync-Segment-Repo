import {
  to = segment_destination.id-69d68c65b81c12ab01211e47
  id = "69d68c65b81c12ab01211e47"
}

resource "segment_destination" "id-69d68c65b81c12ab01211e47" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "684b526072e89c2c2d293afd"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "GONZALEZPADILLA_MONICA_WAREHOUSE_SNOWFLAKE (Activation)"
  settings = jsonencode({
    warehouseId = "iV2sFZHyuBuQTMx5k58MZd"
  })
  source_id = "uRjPaDWwXS8XcRJ8T9tixx"
}