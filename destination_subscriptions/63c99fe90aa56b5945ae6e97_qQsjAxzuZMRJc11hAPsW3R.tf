import {
  to = segment_destination_subscription.id-63c99fe90aa56b5945ae6e97_qQsjAxzuZMRJc11hAPsW3R
  id = "63c99fe90aa56b5945ae6e97:qQsjAxzuZMRJc11hAPsW3R"
}

resource "segment_destination_subscription" "id-63c99fe90aa56b5945ae6e97_qQsjAxzuZMRJc11hAPsW3R" {
  action_id            = "nhJa95SA9MXa3hi2Vm2acC"
  destination_id       = "63c99fe90aa56b5945ae6e97"
  enabled              = true
  model_id             = null
  name                 = "Browser Session Tracking"
  reverse_etl_schedule = null
  settings             = jsonencode({})
  trigger              = "type = \"track\" or type = \"identify\" or type = \"group\" or type = \"page\" or type = \"alias\""
}