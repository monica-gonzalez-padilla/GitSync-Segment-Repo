import {
  to = segment_destination.id-64dbfee07a5963b010878f13
  id = "64dbfee07a5963b010878f13"
}

resource "segment_destination" "id-64dbfee07a5963b010878f13" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "57ab9dfc80412f644ff2004c"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Postman>Floodlight"
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
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}