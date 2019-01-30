var payload = delivery.payload;
var text = payload.factSheet.displayName;

var messages = {
  'FactSheetCreatedEvent' : 'created',
  'FactSheetUpdatedEvent' : 'updated',
  'FactSheetDeletedEvent' : 'deleted'
}

if (payload.type in messages) {
  text += messages[payload.type];
} else {
  text += 'undefined';
}

text +=' by ' + payload.userId;
delivery.payload = {
    text : text,
    username : 'LeanIX',
    icon_url : 'https://app.leanix.net/img/icon.png'
}
