import {
  to = segment_destination.id-63b5f49ac0d96e312cf648e3
  id = "63b5f49ac0d96e312cf648e3"
}

resource "segment_destination" "id-63b5f49ac0d96e312cf648e3" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
      {
      },
      {
      },
    ]
    id                = "5661eb58e954a874ca44cc07"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Facebook Pixel for Event Generator"
  settings = jsonencode({
    automaticConfiguration         = true
    blacklistPiiProperties         = []
    contentTypes                   = {}
    initWithExistingTraits         = false
    keyForExternalId               = ""
    legacyEvents                   = {}
    limitedDataUse                 = true
    pixelId                        = "871168140830342"
    standardEvents                 = {}
    standardEventsCustomProperties = []
    userIdAsExternalId             = false
    valueIdentifier                = "value"
    whitelistPiiProperties         = []
  })
  source_id = "rCnqDERQ6y6DxDSaEAok9L"
}