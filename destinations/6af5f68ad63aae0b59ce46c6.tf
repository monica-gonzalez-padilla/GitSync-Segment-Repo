import {
  to = segment_destination.id-6af5f68ad63aae0b59ce46c6
  id = "6af5f68ad63aae0b59ce46c6"
}

resource "segment_destination" "id-6af5f68ad63aae0b59ce46c6" {
  enabled = false
  metadata = {
    id                = "65302a514ce4a2f0f14cd426"
    partner_owned     = false
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Marketo Static Lists (Actions)"
  settings = jsonencode({
    api_endpoint  = ""
    client_id     = ""
    client_secret = ""
    folder_name   = ""
  })
  source_id = "aiX14WTHnFW24EcLuw1mfT"
}