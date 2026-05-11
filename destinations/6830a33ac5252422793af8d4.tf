import {
  to = segment_destination.id-6830a33ac5252422793af8d4
  id = "6830a33ac5252422793af8d4"
}

resource "segment_destination" "id-6830a33ac5252422793af8d4" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "66e97a37a8f396642c0bd33c"
    partner_owned     = true
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "CM 360 destination"
  settings = jsonencode({
    defaultFloodlightActivityId      = ""
    defaultFloodlightConfigurationId = ""
    profileId                        = ""
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}