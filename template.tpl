___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "First Defined Variable",
  "categories": ["UTILITY"],
  "description": "Loop through items and if item does not equal undefined, \"\" or null then use it and ignore the rest.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SIMPLE_TABLE",
    "name": "items",
    "displayName": "Find first match",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Item",
        "name": "value",
        "type": "TEXT"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

let returnValue;
data.items.forEach((item) => {
  const value = item.value;
  if (typeof returnValue === 'undefined' && typeof value !== 'undefined' && value !== null && value !="") {
    returnValue = value;
  }
});

// Variables must return a value.
return returnValue;


___TESTS___

scenarios: []


___NOTES___

Created on 12/10/2022, 10:04:06


