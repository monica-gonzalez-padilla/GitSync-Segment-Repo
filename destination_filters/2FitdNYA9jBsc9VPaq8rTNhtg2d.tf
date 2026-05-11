import {
  to = segment_destination_filter.id-633da46038361eb1ae8c0cf8_2FitdNYA9jBsc9VPaq8rTNhtg2d
  id = "633da46038361eb1ae8c0cf8:2FitdNYA9jBsc9VPaq8rTNhtg2d"
}

resource "segment_destination_filter" "id-633da46038361eb1ae8c0cf8_2FitdNYA9jBsc9VPaq8rTNhtg2d" {
  actions = [
    {
      fields  = null
      path    = null
      percent = null
      type    = "DROP"
    },
  ]
  description    = "Do not send to Pipedream if blog title = Ulterior motives"
  destination_id = "633da46038361eb1ae8c0cf8"
  enabled        = true
  if             = "event = \"Read Blog\" and properties.blog_title = \"Ulterior Motives\""
  source_id      = "rCnqDERQ6y6DxDSaEAok9L"
  title          = "Blog title = Ulterior motives"
}