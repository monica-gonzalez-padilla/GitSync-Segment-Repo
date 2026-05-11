import {
  to = segment_transformation.id-2wSV1Z8lkexDng2BI6PGIcoZqeK
  id = "2wSV1Z8lkexDng2BI6PGIcoZqeK"
}

resource "segment_transformation" "id-2wSV1Z8lkexDng2BI6PGIcoZqeK" {
  destination_metadata_id = "54521fdc25e721e32a72ef04"
  enabled                 = true
  fql_defined_properties = [
  ]
  if             = "event = \"Buy or Bid Completed\" and context.campaign.utm_campaign != \"spring_sale\" and context.campaign.utm_campaign != \"google\""
  name           = "Only send events with google and spring sale UTMs"
  new_event_name = null
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "tCbspwT9Y8vMy7E2tBBxnt"
}