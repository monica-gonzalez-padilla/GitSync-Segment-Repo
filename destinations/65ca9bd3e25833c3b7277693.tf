import {
  to = segment_destination.id-65ca9bd3e25833c3b7277693
  id = "65ca9bd3e25833c3b7277693"
}

resource "segment_destination" "id-65ca9bd3e25833c3b7277693" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "643697f531f98a978f414453"
    partner_owned     = true
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "rETL> Insider"
  settings = jsonencode({
    account_name = ""
    ucd_key      = ""
  })
  source_id = "iGq29DH47D2toeQD6cAfXw"
}