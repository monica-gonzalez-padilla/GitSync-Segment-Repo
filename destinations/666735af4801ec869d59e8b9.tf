import {
  to = segment_destination.id-666735af4801ec869d59e8b9
  id = "666735af4801ec869d59e8b9"
}

resource "segment_destination" "id-666735af4801ec869d59e8b9" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "5a4d24dcc5836400017188f6"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Personas Facebook Custom Audiences"
  settings = jsonencode({
    account           = ""
    specialAdCategory = ""
  })
  source_id = "aiX14WTHnFW24EcLuw1mfT"
}