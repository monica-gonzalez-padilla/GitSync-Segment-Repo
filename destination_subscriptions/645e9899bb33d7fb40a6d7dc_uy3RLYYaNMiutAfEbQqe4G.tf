import {
  to = segment_destination_subscription.id-645e9899bb33d7fb40a6d7dc_uy3RLYYaNMiutAfEbQqe4G
  id = "645e9899bb33d7fb40a6d7dc:uy3RLYYaNMiutAfEbQqe4G"
}

resource "segment_destination_subscription" "id-645e9899bb33d7fb40a6d7dc_uy3RLYYaNMiutAfEbQqe4G" {
  action_id      = "ujsJxBdpg7XkYwKSKREnQt"
  destination_id = "645e9899bb33d7fb40a6d7dc"
  enabled        = false
  model_id       = "wwLCRVMw39HFYxhurJZ358"
  name           = "Send Track"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "1h"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({
    anonymous_id = {
      "@path" = "$.properties.client_session_id"
    }
    consent = {
      "@path" = "$.context.consent"
    }
    engage_space = "3iLzinpZoFlFhB0gUHgBZtDUz4ESFqPc"
    event_name = {
      "@path" = "$.properties.event_name"
    }
    message_id = {
      "@path" = "$.messageId"
    }
    properties = {
      app_name = {
        "@path" = "$.properties.app_name"
      }
      app_version = {
        "@path" = "$.properties.app_version"
      }
      channel = {
        "@path" = "$.properties.channel"
      }
      client_session_id = {
        "@path" = "$.properties.client_session_id"
      }
      content_completed = {
        "@path" = "$.properties.content_completed"
      }
      content_id = {
        "@path" = "$.properties.content_id"
      }
      content_session_id = {
        "@path" = "$.properties.content_session_id"
      }
      content_title = {
        "@path" = "$.properties.content_title"
      }
      content_total_length__seconds = {
        "@path" = "$.properties.content_total_length__seconds_"
      }
      daypart = {
        "@path" = "$.properties.daypart"
      }
      genre = {
        "@path" = "$.properties.genre"
      }
      hb_seconds = {
        "@path" = "$.properties.hb_seconds"
      }
      position__total_seconds_watched_since_start_of_session = {
        "@path" = "$.properties.position__total_seconds_watched_since_start_of_session_"
      }
      total_time_watched__seconds = {
        "@path" = "$.properties.total_time_watched__seconds_"
      }
      unique_event_id = {
        "@path" = "$.__segment_id"
      }
      viewing_platform = {
        "@path" = "$.properties.viewing_platform"
      }
    }
    timestamp = {
      "@path" = "$.properties.timestamp"
    }
  })
  trigger = "event = \"new\""
}