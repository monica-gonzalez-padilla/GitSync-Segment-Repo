import {
  to = segment_destination.id-63e55bb1d1ca6c7e78c4ff7d
  id = "63e55bb1d1ca6c7e78c4ff7d"
}

resource "segment_destination" "id-63e55bb1d1ca6c7e78c4ff7d" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "5ed96e0b97e7ba0c0346cc04"
    partner_owned     = true
    region_endpoints  = ["US"]
    supported_regions = ["eu-west-1", "us-west-2"]
  }
  name = "Postman source-->Impact"
  settings = jsonencode({
    accountSid               = ""
    actionEventNames         = []
    androidAppId             = ""
    apiKey                   = ""
    campaignId               = ""
    customMappingForProducts = {}
    customParameterMapping   = {}
    enableIdentifyEvents     = false
    enablePageEvents         = false
    enableScreenEvents       = false
    eventTypeId              = ""
    iOsAppId                 = ""
    installEventNames        = []
    pageLoadEventNames       = []
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}