```javascript
// checking duplicates
let seen = new Set();
var hasDuplicates = values.some(function(currentObject) {
    return seen.size === seen.add(currentObject.name).size;
});
```

