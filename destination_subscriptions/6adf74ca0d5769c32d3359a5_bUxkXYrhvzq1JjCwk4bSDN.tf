import {
  to = segment_destination_subscription.id-6adf74ca0d5769c32d3359a5_bUxkXYrhvzq1JjCwk4bSDN
  id = "6adf74ca0d5769c32d3359a5:bUxkXYrhvzq1JjCwk4bSDN"
}

resource "segment_destination_subscription" "id-6adf74ca0d5769c32d3359a5_bUxkXYrhvzq1JjCwk4bSDN" {
  action_id            = "mPHq5mH39pF1c31EXDXPbQ"
  destination_id       = "6adf74ca0d5769c32d3359a5"
  enabled              = true
  model_id             = null
  name                 = "Update Multiple Customer Profiles’ Attributes"
  reverse_etl_schedule = null
  settings = jsonencode({
    data = {
      "@arrayPath" = [{
        "@path" = "$.properties.profiles_list"
      }, null]
    }
  })
  trigger = "type = \"track\""
}