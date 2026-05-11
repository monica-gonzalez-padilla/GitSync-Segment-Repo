import {
  to = segment_destination.id-68461358f04ebd6a810cd6e4
  id = "68461358f04ebd6a810cd6e4"
}

resource "segment_destination" "id-68461358f04ebd6a810cd6e4" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "5a6b50f1c900fa00011858fd"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Google Ads Remarketing Lists"
  settings = jsonencode({
    account           = ""
    adPersonalization = ""
    adUserData        = ""
    appId             = ""
  })
  source_id = "6Fh2bBzsdY7GdrSpHEjFu4"
}