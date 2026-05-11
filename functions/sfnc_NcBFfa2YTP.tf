import {
  to = segment_function.id-sfnc_NcBFfa2YTP
  id = "sfnc_NcBFfa2YTP"
}

resource "segment_function" "id-sfnc_NcBFfa2YTP" {
  code          = "async function onRequest(request, settings) {\n\ttry {\n\t\tconst body = await request.json();\n\n\t\tfor (const data of body.Data) {\n\t\t\tSegment.track({\n\t\t\t\tevent: 'Loyalty Subscription Paid',\n\t\t\t\tuserId: data.CustomerProfileID,\n\t\t\t\tproperties: {\n\t\t\t\t\tcurrentTier: data.CurrentTier,\n\t\t\t\t\tcurrentPoint: data.CurrentPoints,\n\t\t\t\t\tpointsToNextTier: data.PointsRequiredToTheNextTier,\n\t\t\t\t\tnextTier: data.NextTier\n\t\t\t\t}\n\t\t\t});\n\t\t}\n\t} catch (error) {\n\t\tconsole.error('Error processing request:', error);\n\t\t// Handle the error as needed, such as sending an error response\n\t}\n}\n"
  description   = null
  display_name  = "Favor source function"
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "SOURCE"
  settings = [
  ]
}