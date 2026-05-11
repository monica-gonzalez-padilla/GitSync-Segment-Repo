import {
  to = segment_destination.id-6723d9e7336f93a1d9a4419a
  id = "6723d9e7336f93a1d9a4419a"
}

resource "segment_destination" "id-6723d9e7336f93a1d9a4419a" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "61806e472cd47ea1104885fc"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "HTTP- MY FB account"
  settings = jsonencode({
    pixelId       = "1130670755242613"
    testEventCode = ""
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}