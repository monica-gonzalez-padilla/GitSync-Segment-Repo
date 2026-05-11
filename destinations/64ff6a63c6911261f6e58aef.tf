import {
  to = segment_destination.id-64ff6a63c6911261f6e58aef
  id = "64ff6a63c6911261f6e58aef"
}

resource "segment_destination" "id-64ff6a63c6911261f6e58aef" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "60f9d0d048950c356be2e4da"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Braze Cloud Mode (Actions)"
  settings = jsonencode({
    api_key  = "••••••••••b92b"
    app_id   = "f903ff73-ba62-419d-8a93-e86fdfb79c10"
    endpoint = "https://rest.iad-01.braze.com"
  })
  source_id = "aiX14WTHnFW24EcLuw1mfT"
}