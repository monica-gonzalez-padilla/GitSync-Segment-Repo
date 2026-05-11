import {
  to = segment_destination.id-655e6c7356597a110f09b4ba
  id = "655e6c7356597a110f09b4ba"
}

resource "segment_destination" "id-655e6c7356597a110f09b4ba" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "5d4d88bbd02041672e51e3ca"
    partner_owned     = true
    region_endpoints  = ["US"]
    supported_regions = ["eu-west-1", "us-west-2"]
  }
  name = "bloomreach"
  settings = jsonencode({
    apiBaseUrl           = ""
    apiKey               = ""
    exponeaHardId        = ""
    exponeaSoftId        = ""
    flattenNestedObjects = false
    projectToken         = ""
    trackSessionPing     = false
  })
  source_id = "5Q3P5v2mfBPGwtWEMEGD4q"
}