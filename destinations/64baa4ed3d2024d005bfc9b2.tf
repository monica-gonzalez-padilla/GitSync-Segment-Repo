import {
  to = segment_destination.id-64baa4ed3d2024d005bfc9b2
  id = "64baa4ed3d2024d005bfc9b2"
}

resource "segment_destination" "id-64baa4ed3d2024d005bfc9b2" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "54521fd525e721e32a72ee92"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "google ads"
  settings = jsonencode({
    conversionId         = ""
    correctLat           = true
    eventMappings        = []
    linkId               = ""
    pageRemarketing      = false
    trackAttributionData = false
    version              = ""
    zeroedAttribution    = false
  })
  source_id = "rCnqDERQ6y6DxDSaEAok9L"
}