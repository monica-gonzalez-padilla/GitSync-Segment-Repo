import {
  to = segment_destination.id-6509f9878210b9218a00f94a
  id = "6509f9878210b9218a00f94a"
}

resource "segment_destination" "id-6509f9878210b9218a00f94a" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "645babd9362d97b777391325"
    partner_owned     = true
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "rETL> Iterable"
  settings = jsonencode({
    apiKey             = "••••••••••7461"
    dataCenterLocation = "united_states"
    enabled            = false
    name               = ""
  })
  source_id = "qLVZGUoz11VWDxCkA3vREw"
}