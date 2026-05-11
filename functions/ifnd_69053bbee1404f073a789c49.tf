import {
  to = segment_function.id-ifnd_69053bbee1404f073a789c49
  id = "ifnd_69053bbee1404f073a789c49"
}

resource "segment_function" "id-ifnd_69053bbee1404f073a789c49" {
  code          = "/**\n * Handle track event\n * @param  {SegmentTrackEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onTrack(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/track/\n}\n\n/**\n * Handle identify event\n * @param  {SegmentIdentifyEvent} event\n * @param  {FunctionSettings} settings\n *\n * This function intercepts Identify events before they are sent\n * to the downstream destination and removes unwanted traits (e.g. PII).\n */\nconst traitsToRemove = [\n\t'test_property1',\n\t'other_property_to_delete',\n\t'other_property_to_delete',\n\t'other_property_to_delete'\n]; // update the array with the name of the user traits to remove from Identify\n\nasync function onIdentify(event, settings) {\n\t// Clone the event to avoid mutating the original object\n\tconst updatedEvent = { ...event };\n\n\tif (updatedEvent.traits) {\n\t\tfor (const trait of traitsToRemove) {\n\t\t\tif (trait in updatedEvent.traits) {\n\t\t\t\tdelete updatedEvent.traits[trait];\n\t\t\t}\n\t\t}\n\t}\n\tconsole.log('Transformed track event:', JSON.stringify(event, null, 2));\n\n\treturn updatedEvent;\n}\n\n/**\n * Handle group event\n * @param  {SegmentGroupEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onGroup(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/group/\n\tthrow new EventNotSupported('group is not supported');\n}\n\n/**\n * Handle page event\n * @param  {SegmentPageEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onPage(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/page/\n\tthrow new EventNotSupported('page is not supported');\n}\n\n/**\n * Handle delete event\n * @param  {SegmentDeleteEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onDelete(event, settings) {\n\t// Learn more at https://segment.com/docs/partners/spec/#delete\n\tthrow new EventNotSupported('delete is not supported');\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "INSERT_DESTINATION"
  settings = [
  ]
}