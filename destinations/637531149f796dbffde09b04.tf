import {
  to = segment_destination.id-637531149f796dbffde09b04
  id = "637531149f796dbffde09b04"
}

resource "segment_destination" "id-637531149f796dbffde09b04" {
  enabled = true
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "60ad61f9ff47a16b8fb7b5d9"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Google Analytics 4"
  settings = jsonencode({
    apiSecret     = "••••••••••C0sQ"
    measurementId = "G-ZNR1K8B5BM"
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}