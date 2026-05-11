import {
  to = segment_destination.id-684613a2ccde667609e43e15
  id = "684613a2ccde667609e43e15"
}

resource "segment_destination" "id-684613a2ccde667609e43e15" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "60f9d0d048950c356be2e4da"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Braze Cloud Mode (Actions) (Cluster 3)"
  settings = jsonencode({
    api_key = "••••••••••89ee"
    app_id  = ""
    dynamicAuthSettings = {
      configId = "684613a2ccde667609e43e15"
    }
    endpoint = "https://rest.iad-01.braze.com"
  })
  source_id = "6Fh2bBzsdY7GdrSpHEjFu4"
}