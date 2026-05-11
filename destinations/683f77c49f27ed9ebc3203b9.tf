import {
  to = segment_destination.id-683f77c49f27ed9ebc3203b9
  id = "683f77c49f27ed9ebc3203b9"
}

resource "segment_destination" "id-683f77c49f27ed9ebc3203b9" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "61aa712b857e8c85c3b5a849"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Adobe Target Cloud Mode"
  settings = jsonencode({
    bearer_token = ""
    client_code  = "6854165161"
    dynamicAuthSettings = {
      configId = "683f77c49f27ed9ebc3203b9"
      oauth = {
        type = "noAuth"
      }
    }
  })
  source_id = "aiX14WTHnFW24EcLuw1mfT"
}