import {
  to = segment_transformation.id-2xJzL5zZULN1pHxxY3CdxhF5IKS
  id = "2xJzL5zZULN1pHxxY3CdxhF5IKS"
}

resource "segment_transformation" "id-2xJzL5zZULN1pHxxY3CdxhF5IKS" {
  destination_metadata_id = "54521fdc25e721e32a72ef04"
  enabled                 = false
  fql_defined_properties = [
  ]
  if             = "event = \"order completed\""
  name           = "test"
  new_event_name = null
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}