import {
  to = segment_destination_subscription.id-69e00857b0bd4d06d922de38_d2u25HfdMheQ84ptNrEnoi
  id = "69e00857b0bd4d06d922de38:d2u25HfdMheQ84ptNrEnoi"
}

resource "segment_destination_subscription" "id-69e00857b0bd4d06d922de38_d2u25HfdMheQ84ptNrEnoi" {
  action_id            = "ifeXsLqNNjJ5HJdRKSJwea"
  destination_id       = "69e00857b0bd4d06d922de38"
  enabled              = true
  model_id             = null
  name                 = "Identify Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_size = 1001
    dataFields = {
      "@path" = "$.traits"
    }
    email = {
      "@path" = "$.traits.email"
    }
    enable_batching    = true
    mergeNestedObjects = false
    phoneNumber = {
      "@path" = "$.traits.phone"
    }
    userId = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"identify\" and context.account_updated = false"
}