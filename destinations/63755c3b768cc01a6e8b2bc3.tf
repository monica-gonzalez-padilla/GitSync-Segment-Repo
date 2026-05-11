import {
  to = segment_destination.id-63755c3b768cc01a6e8b2bc3
  id = "63755c3b768cc01a6e8b2bc3"
}

resource "segment_destination" "id-63755c3b768cc01a6e8b2bc3" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "54521fdc25e721e32a72ef04"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Webhook 2 SpinbyOxoo"
  settings = jsonencode({
    globalHook = ""
    hooks = [{
      headers = [{
        key   = ""
        value = ""
      }]
      hook = "https://fn.segmentapis.com/?b=ZEJ3ZjZ2ZHE2U2g5ZlJNYk5WN1dKNDo6UjVzQjBqem9iTlUydGkxNTBSMHFaWG54QkZySDVYVGE="
    }]
    sharedSecret = ""
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}