import {
  to = segment_destination.id-662682d8e6aef02576099aaa
  id = "662682d8e6aef02576099aaa"
}

resource "segment_destination" "id-662682d8e6aef02576099aaa" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "64edeb2bee24614fe52ede34"
    partner_owned     = true
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Optimizely Advanced Audience Targeting"
  settings = jsonencode({
    apiKey = ""
    region = ""
  })
  source_id = "aiX14WTHnFW24EcLuw1mfT"
}