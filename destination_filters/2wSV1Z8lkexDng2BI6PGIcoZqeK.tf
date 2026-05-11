import {
  to = segment_destination_filter.id-6362a127b147915f21d6b2a6_2wSV1Z8lkexDng2BI6PGIcoZqeK
  id = "6362a127b147915f21d6b2a6:2wSV1Z8lkexDng2BI6PGIcoZqeK"
}

resource "segment_destination_filter" "id-6362a127b147915f21d6b2a6_2wSV1Z8lkexDng2BI6PGIcoZqeK" {
  actions = [
    {
      fields  = null
      path    = null
      percent = null
      type    = "DROP"
    },
  ]
  description    = null
  destination_id = "6362a127b147915f21d6b2a6"
  enabled        = true
  if             = "event = \"Buy or Bid Completed\" and context.campaign.utm_campaign != \"spring_sale\" and context.campaign.utm_campaign != \"google\""
  source_id      = "tCbspwT9Y8vMy7E2tBBxnt"
  title          = "Only send events with google and spring sale UTMs"
}