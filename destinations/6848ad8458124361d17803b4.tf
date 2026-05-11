import {
  to = segment_destination.id-6848ad8458124361d17803b4
  id = "6848ad8458124361d17803b4"
}

resource "segment_destination" "id-6848ad8458124361d17803b4" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "624dddd054ced46facfdb9c0"
    partner_owned     = true
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "LaunchDarkly (Actions)"
  settings = jsonencode({
    client_id = "3546789"
    dynamicAuthSettings = {
      configId = "6848ad8458124361d17803b4"
    }
    events_host_name = "events.launchdarkly.com"
  })
  source_id = "6Fh2bBzsdY7GdrSpHEjFu4"
}