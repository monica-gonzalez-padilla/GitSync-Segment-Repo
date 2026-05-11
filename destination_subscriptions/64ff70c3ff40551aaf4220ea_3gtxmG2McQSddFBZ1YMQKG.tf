import {
  to = segment_destination_subscription.id-64ff70c3ff40551aaf4220ea_3gtxmG2McQSddFBZ1YMQKG
  id = "64ff70c3ff40551aaf4220ea:3gtxmG2McQSddFBZ1YMQKG"
}

resource "segment_destination_subscription" "id-64ff70c3ff40551aaf4220ea_3gtxmG2McQSddFBZ1YMQKG" {
  action_id            = "vE7Gf9yobj2gTuMBhwmg7g"
  destination_id       = "64ff70c3ff40551aaf4220ea"
  enabled              = true
  model_id             = null
  name                 = "Order Completed Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    external_id = {
      "@path" = "$.userId"
    }
    products = {
      "@path" = "$.properties.products"
    }
    properties = {
      "@path" = "$.properties"
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "event = \"Order Completed\""
}