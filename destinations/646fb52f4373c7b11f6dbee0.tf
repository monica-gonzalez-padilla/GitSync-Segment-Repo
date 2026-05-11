import {
  to = segment_destination.id-646fb52f4373c7b11f6dbee0
  id = "646fb52f4373c7b11f6dbee0"
}

resource "segment_destination" "id-646fb52f4373c7b11f6dbee0" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "639c2dbb1309fdcad13951b6"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Profiles 2"
  settings = jsonencode({
    enabled  = false
    endpoint = "north_america"
    name     = ""
  })
  source_id = "qLVZGUoz11VWDxCkA3vREw"
}