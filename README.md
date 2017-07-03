# Platform Events inplementation for Publishing Chatter FeedItems Events 

## For each post on chatter, an event is published

For consuming the event, an easy approach is to implement Jsforce library on a nodeJS app locally or on heroku.

Index.js Example

```JavaScript
var jsforce = require('jsforce');

var username = 'USER_NAME';
var password = 'PASS+TOKEN';

var conn = new jsforce.Connection({});
conn.login(username, password, function(err, userInfo) {
  if (err) { 
    return console.error(err); 
  }
  conn.streaming.topic("/event/ChatterActivity__e").subscribe(function(message) {
    console.log(message);
  });
});
```

