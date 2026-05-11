import {
  to = segment_destination.id-645e9899bb33d7fb40a6d7dc
  id = "645e9899bb33d7fb40a6d7dc"
}

resource "segment_destination" "id-645e9899bb33d7fb40a6d7dc" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "639c2dbb1309fdcad13951b6"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Segment Profiles for Reverse ETL"
  settings = jsonencode({
    endpoint           = "north_america"
    segment_papi_token = ""
  })
  source_id = "qLVZGUoz11VWDxCkA3vREw"
}