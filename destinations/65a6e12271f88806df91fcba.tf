import {
  to = segment_destination.id-65a6e12271f88806df91fcba
  id = "65a6e12271f88806df91fcba"
}

resource "segment_destination" "id-65a6e12271f88806df91fcba" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "5642909ae954a874ca44c582"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "branch"
  settings = jsonencode({
    apiSecret  = ""
    branch_key = ""
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}