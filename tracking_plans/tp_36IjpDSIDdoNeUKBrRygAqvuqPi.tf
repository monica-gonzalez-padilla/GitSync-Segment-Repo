import {
  to = segment_tracking_plan.id-tp_36IjpDSIDdoNeUKBrRygAqvuqPi
  id = "tp_36IjpDSIDdoNeUKBrRygAqvuqPi"
}

resource "segment_tracking_plan" "id-tp_36IjpDSIDdoNeUKBrRygAqvuqPi" {
  description = "description"
  name        = "Protocols Demo Tracking Plan"
  rules = [
    {
      json_schema = jsonencode({
        "$schema"   = "http://json-schema.org/draft-07/schema#"
        description = "DO NOT EDIT. Event generated to store end users consent preferences for Unify and Twilio Engage."
        properties = {
          context = {
            type = "object"
          }
          properties = {
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Segment Consent Preference Updated"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema"   = "http://json-schema.org/draft-07/schema#"
        description = "It ensures that every Segment call has a userId, anonymousId, and context object with a nested device object."
        properties = {
          anonymousId = {
            id   = "/properties/anonymousId"
            type = "string"
          }
          context = {
            properties = {
              device = {
                id = "/properties/context/properties/device"
                properties = {
                  advertisingId = {
                    id   = "/properties/context/properties/device/properties/advertisingId"
                    type = "string"
                  }
                }
                required = ["advertisingId"]
                type     = "object"
              }
            }
            required = ["device"]
            type     = "object"
          }
          properties = {
            properties = {
              primary_business_unit = {
                id   = "/properties/properties/properties/primary_business_unit"
                type = "string"
              }
            }
            required = ["primary_business_unit"]
            type     = "object"
          }
          traits = {
            properties = {
              email = {
                id   = "/properties/traits/properties/email"
                type = "string"
              }
              first_name = {
                id   = "/properties/traits/properties/first_name"
                type = "string"
              }
              last_name = {
                id   = "/properties/traits/properties/last_name"
                type = "string"
              }
            }
            required = ["email"]
            type     = "object"
          }
          userId = {
            id   = "/properties/userId"
            type = "string"
          }
        }
        required = ["context", "anonymousId", "userId", "traits"]
        type     = "object"
      })
      key     = "Form Submitted"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Page Viewed"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}