import {
  to = segment_transformation.id-2eFB55s8f5uSXXbN2oEyQ3zSxKp
  id = "2eFB55s8f5uSXXbN2oEyQ3zSxKp"
}

resource "segment_transformation" "id-2eFB55s8f5uSXXbN2oEyQ3zSxKp" {
  destination_metadata_id = null
  enabled                 = true
  fql_defined_properties = [
  ]
  if             = "event=\"Donation Made\""
  name           = "donation_made property transformation"
  new_event_name = null
  property_renames = [
    {
      new_name = "donation_amount"
      old_name = "amount"
    },
  ]
  property_value_transformations = [
  ]
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}