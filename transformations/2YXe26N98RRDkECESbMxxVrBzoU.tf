import {
  to = segment_transformation.id-2YXe26N98RRDkECESbMxxVrBzoU
  id = "2YXe26N98RRDkECESbMxxVrBzoU"
}

resource "segment_transformation" "id-2YXe26N98RRDkECESbMxxVrBzoU" {
  destination_metadata_id = "5850d8b680412f644ff55df2"
  enabled                 = true
  fql_defined_properties = [
  ]
  if             = "!(event = \"mob_send_view_moneySent\" and properties.sendMoneyType = \"QR\")"
  name           = "spin example- mob_send_view_moneySent"
  new_event_name = null
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}