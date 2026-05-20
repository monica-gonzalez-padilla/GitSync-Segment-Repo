import {
  to = segment_destination.id-6a0de1bb17dd02a0209ad7c0
  id = "6a0de1bb17dd02a0209ad7c0"
}

resource "segment_destination" "id-6a0de1bb17dd02a0209ad7c0" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "58f8f55a70a3e552b955a444"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "HTTP API - Marketo"
  settings = jsonencode({
    accountId         = "667-MPQ-382"
    anonymousActivity = false
    beta              = false
    clientId          = ""
    clientSecret      = ""
    events            = []
    marketoFormId     = ""
    marketoHostUrl    = ""
    traits            = []
  })
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}