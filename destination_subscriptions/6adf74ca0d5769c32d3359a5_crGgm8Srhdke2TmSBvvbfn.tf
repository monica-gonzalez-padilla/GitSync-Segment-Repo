import {
  to = segment_destination_subscription.id-6adf74ca0d5769c32d3359a5_crGgm8Srhdke2TmSBvvbfn
  id = "6adf74ca0d5769c32d3359a5:crGgm8Srhdke2TmSBvvbfn"
}

resource "segment_destination_subscription" "id-6adf74ca0d5769c32d3359a5_crGgm8Srhdke2TmSBvvbfn" {
  action_id            = "nEzS6B255TiBsk4n2aTGP6"
  destination_id       = "6adf74ca0d5769c32d3359a5"
  enabled              = true
  model_id             = null
  name                 = "Update customer profile"
  reverse_etl_schedule = null
  settings = jsonencode({
    attributes = {
      "@path" = "$.traits"
    }
    customerProfileId = {
      "@path" = "$.userId"
    }
    runRuleEngine = true
  })
  trigger = "event = \"\""
}