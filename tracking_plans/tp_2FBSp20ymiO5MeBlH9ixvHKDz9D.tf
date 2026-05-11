import {
  to = segment_tracking_plan.id-tp_2FBSp20ymiO5MeBlH9ixvHKDz9D
  id = "tp_2FBSp20ymiO5MeBlH9ixvHKDz9D"
}

resource "segment_tracking_plan" "id-tp_2FBSp20ymiO5MeBlH9ixvHKDz9D" {
  description = "description"
  name        = "Website Tracking Plan (button clicker and GitHub)"
  rules = [
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        labels = {
          source = " event generator"
        }
        properties = {
          context = {}
          properties = {
            properties = {
              query = {
                description = "Query the user searched with\n"
                id          = "/properties/properties/properties/query"
                type        = ["string", "null"]
              }
            }
            required = ["query"]
            type     = "object"
          }
          traits = {
            type = "object"
          }
        }
        required = ["properties"]
        type     = "object"
      })
      key     = "Products Searched"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          integrations = {
            id = "/properties/integrations"
          }
          properties = {}
          traits     = {}
          userId = {
            description = ""
            id          = "/properties/userId"
            type        = "string"
          }
        }
        required = ["userId"]
        type     = "object"
      })
      key     = null
      type    = "COMMON"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              "" = {
                description = ""
                id          = "/properties/properties/properties/"
                type        = "object"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Promotion clicked"
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
              another_property = {
                description = ""
                id          = "/properties/properties/properties/another_property"
                type        = "string"
              }
              email = {
                description = ""
                id          = "/properties/properties/properties/email"
                type        = "string"
              }
              form_name = {
                description = ""
                id          = "/properties/properties/properties/form_name"
                type        = "string"
              }
              other_property1 = {
                description = ""
                id          = "/properties/properties/properties/other_property1"
                type        = "string"
              }
              other_property2 = {
                description = ""
                id          = "/properties/properties/properties/other_property2"
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
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
            properties = {
              creative = {
                description = ""
                id          = "/properties/properties/properties/creative"
                pattern     = ""
                type        = "string"
              }
              name = {
                description = ""
                id          = "/properties/properties/properties/name"
                type        = "string"
              }
              position = {
                description = ""
                id          = "/properties/properties/properties/position"
                type        = "number"
              }
              promotion_id = {
                description = ""
                id          = "/properties/properties/properties/promotion_id"
                type        = "number"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Promotion viewed"
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
              email = {
                description = ""
                id          = "/properties/properties/properties/email"
                type        = "string"
              }
              origin = {
                description = ""
                id          = "/properties/properties/properties/origin"
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Signed Up"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        properties = {
          context    = {}
          properties = {}
          traits     = {}
        }
      })
      key     = "Page Viewed"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}