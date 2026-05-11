import {
  to = segment_tracking_plan.id-tp_38zNsXEZibXBIiNDbO37nUGQpR9
  id = "tp_38zNsXEZibXBIiNDbO37nUGQpR9"
}

resource "segment_tracking_plan" "id-tp_38zNsXEZibXBIiNDbO37nUGQpR9" {
  description = "description"
  name        = "stock x test Tracking Plan"
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
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              items = {
                id = "/properties/properties/properties/items"
                items = {
                  id = "/properties/properties/properties/items/items"
                  properties = {
                    "$" = {
                      description = ""
                      id          = "/properties/properties/properties/items/items/properties/%24"
                      type        = "object"
                    }
                    index = {
                      description = ""
                      id          = "/properties/properties/properties/items/items/properties/index"
                      type        = "integer"
                    }
                    productUUID = {
                      description = ""
                      id          = "/properties/properties/properties/items/items/properties/productUUID"
                      type        = "string"
                    }
                    skuUUID = {
                      description = ""
                      id          = "/properties/properties/properties/items/items/properties/skuUUID"
                      type        = "string"
                    }
                  }
                  required = []
                  type     = "object"
                }
                type = "array"
              }
              screenName = {
                id   = "/properties/properties/properties/screenName"
                type = ["string"]
              }
              swooshName = {
                id   = "/properties/properties/properties/swooshName"
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Product Carousel Viewed"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              propertyName = {
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Insert event name"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}