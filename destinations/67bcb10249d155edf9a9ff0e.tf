import {
  to = segment_destination.id-67bcb10249d155edf9a9ff0e
  id = "67bcb10249d155edf9a9ff0e"
}

resource "segment_destination" "id-67bcb10249d155edf9a9ff0e" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "54521fdc25e721e32a72ef04"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Coda workbook demo- webhook"
  settings = jsonencode({
    globalHook   = ""
    hooks        = []
    sharedSecret = ""
  })
  source_id = "n9sC9u9s1YoRPobhD2zqsF"
}