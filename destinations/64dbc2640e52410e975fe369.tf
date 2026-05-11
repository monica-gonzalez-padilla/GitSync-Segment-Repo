import {
  to = segment_destination.id-64dbc2640e52410e975fe369
  id = "64dbc2640e52410e975fe369"
}

resource "segment_destination" "id-64dbc2640e52410e975fe369" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "63d2e550fb90f1632ed8820a"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name      = "TikTok Audiences"
  settings  = jsonencode({})
  source_id = "aiX14WTHnFW24EcLuw1mfT"
}