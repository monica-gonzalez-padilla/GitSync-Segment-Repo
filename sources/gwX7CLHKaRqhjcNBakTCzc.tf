import {
  to = segment_source.id-gwX7CLHKaRqhjcNBakTCzc
  id = "gwX7CLHKaRqhjcNBakTCzc"
}

resource "segment_source" "id-gwX7CLHKaRqhjcNBakTCzc" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "AMEX Demo Website"
  settings = jsonencode({
    apiHost     = "api.segment.io/v1"
    website_url = "https://yf3olgunmizge04mvb09ewundk869t-t0q1--3000--017acfb7.local-credentialless.webcontainer-api.io"
  })
  slug = "amex_demo_website"
}