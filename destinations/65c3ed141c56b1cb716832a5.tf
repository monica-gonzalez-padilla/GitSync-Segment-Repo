import {
  to = segment_destination.id-65c3ed141c56b1cb716832a5
  id = "65c3ed141c56b1cb716832a5"
}

resource "segment_destination" "id-65c3ed141c56b1cb716832a5" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "57ab9dfc80412f644ff2004c"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Floodlight"
  settings = jsonencode({
    activityTag            = ""
    events                 = []
    getDoubleClickId       = false
    googleNetworkId        = ""
    groupTag               = ""
    segmentWriteKey        = ""
    source                 = ""
    token                  = ""
    useTransactionCounting = false
  })
  source_id = "5Q3P5v2mfBPGwtWEMEGD4q"
}