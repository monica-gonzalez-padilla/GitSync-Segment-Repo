import {
  to = segment_function.id-ifnd_6723b13df78cfc8d68cbc49b
  id = "ifnd_6723b13df78cfc8d68cbc49b"
}

resource "segment_function" "id-ifnd_6723b13df78cfc8d68cbc49b" {
  code          = "//spaceId: spa_moWTxQRn1NWcs1YTu8N7ia\n//engage token: ZR-j4AftVRLBmOM01J1HP8T4HwmjDiiZdoj2n1_hN0p4KBV7r4M0GMltrI5gayaRatgz0jYkyyjfIcBkQZzIqvqesk7f16Oix8qBVmVkZw5yiuvbcL3AsLkQaPgCSkJ2VgBWbeDFzEAj_fBBPd_ro0PLrBXRmL5EA4lMh8fIEj9mcpBVQgyLtXCwoqKSljbTu9icJw1d7RGzH0taP2d3Ifjv3pQI9-lqkHIIVdt_C4KxGyfvgAi_Mbb81QGdaEyOvkIWDvn5UpVg8kVlv4y4bI7WkV4=\n\n// Learn more about insert destination functions API at\n// https://segment.com/docs/connections/functions/insert-functions/\n\n/**\n * Handle track event\n * @param  {SegmentTrackEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onTrack(event, settings) {\n\tconst endpointProfile = `https://profiles.segment.com/v1/spaces/$${settings.spaceId}/collections/users/profiles/user_id:$${event.userId}/traits?include=first_name,last_name,email,phone`;\n\tconsole.log(settings.spaceId);\n\n\tlet first_name = '';\n\tlet last_name = '';\n\tlet email = '';\n\tlet phone = '';\n\n\t// skip if no userid, or if events would not have stored user data\n\tif (!event.userId || event.event === 'Application Installed') {\n\t\tconsole.log('Wrong Event. Profile NOT fetched');\n\t\treturn event;\n\t}\n\n\t// skip if event is sign up completed and all info is present\n\tif (\n\t\tevent.event === 'Sign Up Completed' &&\n\t\tevent.properties.email &&\n\t\tevent.properties.phone_number\n\t) {\n\t\tconsole.log('No missing info. profile NOT fetched');\n\t\treturn event;\n\t}\n\n\tconsole.log('Fetching profile.');\n\ttry {\n\t\tlet response = await fetch(endpointProfile, {\n\t\t\tmethod: 'GET',\n\t\t\theaders: {\n\t\t\t\tAuthorization: `Basic $${btoa(settings.profileToken + ':')}`,\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t}\n\t\t});\n\t\tlet data = await response.json();\n\t\tconsole.log('Profile Fetched:', data); // Log the fetched data\n\n\t\tif (!data || !data.traits) {\n\t\t\treturn event;\n\t\t}\n\n\t\tfirst_name = data.traits.first_name;\n\t\tlast_name = data.traits.last_name;\n\t\temail = data.traits.email;\n\t\tphone = data.traits.phone;\n\t} catch (error) {\n\t\tconsole.error('Failed to fetch profile', error);\n\t\tthrow new RetryError(`Failed with $${error}`);\n\t}\n\n\tlet transformed_event = { ...event };\n\tif (first_name) transformed_event.properties['first_name'] = first_name;\n\tif (last_name) transformed_event.properties['last_name'] = last_name;\n\tif (!event.properties.email && email)\n\t\ttransformed_event.properties['email'] = email;\n\tif (!event.properties.phone_number && phone)\n\t\ttransformed_event.properties['phone'] = phone;\n\n\tconsole.log(transformed_event);\n\n\treturn transformed_event;\n}\n\n/**\n * Handle identify event\n * @param  {SegmentIdentifyEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onIdentify(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/identify/\n\tthrow new EventNotSupported('identify is not supported');\n}\n\n/**\n * Handle group event\n * @param  {SegmentGroupEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onGroup(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/group/\n\tthrow new EventNotSupported('group is not supported');\n}\n\n/**\n * Handle page event\n * @param  {SegmentPageEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onPage(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/page/\n\tthrow new EventNotSupported('page is not supported');\n}\n\n/**\n * Handle screen event\n * @param  {SegmentScreenEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onScreen(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/screen/\n\tthrow new EventNotSupported('screen is not supported');\n}\n\n/**\n * Handle alias event\n * @param  {SegmentAliasEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onAlias(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/alias/\n\tthrow new EventNotSupported('alias is not supported');\n}\n\n/**\n * Handle delete event\n * @param  {SegmentDeleteEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onDelete(event, settings) {\n\t// Learn more at https://segment.com/docs/partners/spec/#delete\n\tthrow new EventNotSupported('delete is not supported');\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "INSERT_DESTINATION"
  settings = [
    {
      description = ""
      label       = "profileToken"
      name        = "profileToken"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "spaceId"
      name        = "spaceId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}