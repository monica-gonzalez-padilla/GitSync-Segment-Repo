import {
  to = segment_destination.id-647f56bb0feed671c01c5037
  id = "647f56bb0feed671c01c5037"
}

resource "segment_destination" "id-647f56bb0feed671c01c5037" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "639c2dbb1309fdcad13951b6"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Profiles 3"
  settings = jsonencode({
    enabled  = false
    endpoint = "north_america"
    name     = ""
  })
  source_id = "qLVZGUoz11VWDxCkA3vREw"
}