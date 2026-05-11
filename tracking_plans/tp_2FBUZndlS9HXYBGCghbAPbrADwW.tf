import {
  to = segment_tracking_plan.id-tp_2FBUZndlS9HXYBGCghbAPbrADwW
  id = "tp_2FBUZndlS9HXYBGCghbAPbrADwW"
}

resource "segment_tracking_plan" "id-tp_2FBUZndlS9HXYBGCghbAPbrADwW" {
  description = "description"
  name        = "Event Generator Tracking Plan"
  rules = [
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        labels = {
          team = " marketing"
        }
        properties = {
          context = {}
          properties = {
            properties = {
              blog_title = {
                id   = "/properties/properties/properties/blog_title"
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Read Blog"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        labels = {
          team = " marketing"
        }
        properties = {
          context = {}
          properties = {
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Newsletter Signed Up"
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
              coupon_code = {
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Redeemed Coupon"
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
          traits = {}
        }
        type = "object"
      })
      key     = "Cart Added"
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
          traits = {}
        }
        type = "object"
      })
      key     = "Logged In"
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
          traits = {}
        }
        type = "object"
      })
      key     = "Logged Out"
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
          traits = {}
        }
        type = "object"
      })
      key     = "Purchased"
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
          traits = {}
        }
        type = "object"
      })
      key     = "View Deals"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}