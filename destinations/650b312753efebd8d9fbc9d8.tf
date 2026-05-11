import {
  to = segment_destination.id-650b312753efebd8d9fbc9d8
  id = "650b312753efebd8d9fbc9d8"
}

resource "segment_destination" "id-650b312753efebd8d9fbc9d8" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "645babd9362d97b777391325"
    partner_owned     = true
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Engage> Iterable (Actions)"
  settings = jsonencode({
    apiKey             = "••••••••••7461"
    dataCenterLocation = "united_states"
  })
  source_id = "aiX14WTHnFW24EcLuw1mfT"
}