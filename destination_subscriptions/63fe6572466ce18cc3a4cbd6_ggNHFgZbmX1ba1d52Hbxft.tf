import {
  to = segment_destination_subscription.id-63fe6572466ce18cc3a4cbd6_ggNHFgZbmX1ba1d52Hbxft
  id = "63fe6572466ce18cc3a4cbd6:ggNHFgZbmX1ba1d52Hbxft"
}

resource "segment_destination_subscription" "id-63fe6572466ce18cc3a4cbd6_ggNHFgZbmX1ba1d52Hbxft" {
  action_id      = "dfT2tG36Ddr8MUKCUvcvLt"
  destination_id = "63fe6572466ce18cc3a4cbd6"
  enabled        = true
  model_id       = "vrU7Sd7jUdct6s5MnfzVtX"
  name           = "Upsert Company"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "1h"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({
    associateContact    = false
    companysearchfields = {}
    createNewCompany    = false
    domain = {
      "@path" = "$.properties.Domain"
    }
    groupid = {
      "@path" = "$.properties.Company_HubSpot_ID"
    }
    name = {
      "@path" = "$.properties.Company_Name"
    }
    properties = {
      company_score = {
        "@path" = "$.properties.company_Score"
      }
    }
  })
  trigger = "event = \"new\" or event = \"updated\""
}