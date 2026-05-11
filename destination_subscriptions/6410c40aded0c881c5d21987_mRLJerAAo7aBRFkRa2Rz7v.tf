import {
  to = segment_destination_subscription.id-6410c40aded0c881c5d21987_mRLJerAAo7aBRFkRa2Rz7v
  id = "6410c40aded0c881c5d21987:mRLJerAAo7aBRFkRa2Rz7v"
}

resource "segment_destination_subscription" "id-6410c40aded0c881c5d21987_mRLJerAAo7aBRFkRa2Rz7v" {
  action_id            = "91oYbiQnniVpkfA5AAg7E"
  destination_id       = "6410c40aded0c881c5d21987"
  enabled              = true
  model_id             = null
  name                 = "Opportunity"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_size = "5000"
    customFields = {
      insert_function_property = "insert_function_property"
    }
    enable_batching       = false
    operation             = "create"
    recordMatcherOperator = "OR"
  })
  trigger = "type = \"track\""
}