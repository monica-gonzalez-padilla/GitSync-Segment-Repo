import {
  to = segment_destination.id-68ed4ebfe872a567bbca130e
  id = "68ed4ebfe872a567bbca130e"
}

resource "segment_destination" "id-68ed4ebfe872a567bbca130e" {
  enabled = true
  metadata = {
    contacts = [
      {
      },
      {
      },
    ]
    id                = "62f435d1d311567bd5bf0e8d"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "LinkedIn Audiences"
  settings = jsonencode({
    ad_account_id = "510987882"
    dynamicAuthSettings = {
      configId = "68ed4ebfe872a567bbca130e"
      oauth = {
        type = "noAuth"
      }
    }
    send_email                 = true
    send_google_advertising_id = true
  })
  source_id = "aiX14WTHnFW24EcLuw1mfT"
}