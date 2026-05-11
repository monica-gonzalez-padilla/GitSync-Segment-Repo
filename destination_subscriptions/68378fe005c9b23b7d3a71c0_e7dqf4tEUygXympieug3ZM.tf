import {
  to = segment_destination_subscription.id-68378fe005c9b23b7d3a71c0_e7dqf4tEUygXympieug3ZM
  id = "68378fe005c9b23b7d3a71c0:e7dqf4tEUygXympieug3ZM"
}

resource "segment_destination_subscription" "id-68378fe005c9b23b7d3a71c0_e7dqf4tEUygXympieug3ZM" {
  action_id      = "ujsJxBdpg7XkYwKSKREnQt"
  destination_id = "68378fe005c9b23b7d3a71c0"
  enabled        = true
  model_id       = "7Zh9nYLvSBfYnFim942RDC"
  name           = "Send Track"
  reverse_etl_schedule = {
    config = jsonencode({
      days     = [1]
      hours    = [5]
      timezone = "America/Denver"
    })
    strategy = "SPECIFIC_DAYS"
  }
  settings = jsonencode({
    consent = {
      "@path" = "$.context.consent"
    }
    engage_space = "3iLzinpZoFlFhB0gUHgBZtDUz4ESFqPc"
    event_name   = "Content Session Started"
    message_id = {
      "@path" = "$.messageId"
    }
    properties = {
      app_name         = "app_name"
      app_version      = "app_version"
      channel          = "channel"
      genre            = "genre"
      viewing_platform = "viewing_platform\n"
    }
    timestamp = {
      "@path" = "$.receivedAt"
    }
    user_id = {
      "@path" = "$.properties.USER_ID"
    }
  })
  trigger = "event = \"new\""
}