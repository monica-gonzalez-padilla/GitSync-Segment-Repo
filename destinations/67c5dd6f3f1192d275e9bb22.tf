import {
  to = segment_destination.id-67c5dd6f3f1192d275e9bb22
  id = "67c5dd6f3f1192d275e9bb22"
}

resource "segment_destination" "id-67c5dd6f3f1192d275e9bb22" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "632b1116e0cb83902f3fd717"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "TEST Unify Space -HubSpot Cloud Mode (Actions)"
  settings = jsonencode({
    dynamicAuthSettings = {
      configId = "67c5dd6f3f1192d275e9bb22"
    }
    portalId = "6318470"
  })
  source_id = "mP7ETq1XNZy6CHhmP77Yz7"
}