```JSON
"Basic grid": {
	   "prefix": "grid",
	   "body": [
		  "<div class='slds-grid'>",
		  "  <div>",
		  "    <span>1</span>",
		  "  </div>",
		  "  <div>",
		  "    <span>2</span>",
		  "  </div>  ",
		  "</div>"
	   ],
	   "description": "Basic slds grid template"
	},
	"Basic iterator": {
	   "prefix": "iterator",
	   "body": [
		  "<div if:true={contacts} iterator:it={contacts} key={it.value.Id}>",
		  "    {it.value.Name}{it.index}{it.first}",
		  "</div>",
	   ],
	   "description": "Basic lwc iterator"
	
```