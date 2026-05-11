import {
  to = segment_destination.id-64ff70c3ff40551aaf4220ea
  id = "64ff70c3ff40551aaf4220ea"
}

resource "segment_destination" "id-64ff70c3ff40551aaf4220ea" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "60f9d0d048950c356be2e4da"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "HTTP API> Braze"
  settings = jsonencode({
    api_key  = "••••••••••e083"
    app_id   = "f903ff73-ba62-419d-8a93-e86fdfb79c10"
    endpoint = "https://rest.iad-01.braze.com"
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}