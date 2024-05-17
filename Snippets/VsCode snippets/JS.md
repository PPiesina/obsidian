```JSON
{
	"apexLwcImport": {
	   "prefix": "apexLwcImport",
	   "body": [
		  "import APEX_METHOD from \"@salesforce/apex/APEX_CLASS.APEX_METHOD\";"
	   ]
	},
	"xlog": {
	   "prefix": "xlog",
	   "body": [
		  "console.log(JSON.parse(JSON.stringify($TM_SELECTED_TEXT$1)));"
	   ],
	   "description": "logs json stuff through proxy"
	},
	"adds method header": {
	   "prefix": "dc_doc",
	   "body": [
		 "/**",
		 "* @Description ${1:example description}",
		 "* @author Paulius Piešina",
		 "* @date $CURRENT_YEAR-$CURRENT_MONTH-$CURRENT_DATE",
		 "* @param {Object} params",
		 "* @param {} params.something",
		 "* @returns {void}",
		 "*/"
	   ],
	   "description": "adds method header"
	 },
	"trycatch": {
	   "prefix": "trycatch",
	   "body": [
		  "try {",
		  "  $TM_SELECTED_TEXT$1",
		  "}catch(err) {",
		  "  console.log(err);",
		  "}"
	   ],
	   "description": "try catches selected text"
	},
	"_copy": {
	   "prefix": "_copy",
	   "body": [
		  "JSON.parse(JSON.stringify($TM_SELECTED_TEXT));"
	   ],
	   "description": "deep object copy"
	},
	"wait": {
	   "prefix": "wait",
	   "body": [
		  "await new Promise(resolve => setTimeout(resolve, 1000));// eslint-disable-line"
	   ],
	   "description": "waits 1 second"
	},
	"selectLwc": {
	   "prefix": "selectLwc",
	   "body": [
		  "this.template.querySelector('$TM_SELECTED_TEXT$1');"
	   ],
	   "description": "Basic lwc query selector"
	},
	"setter": {
	   "prefix": "_setter",
	   "body": [
		  "_$TM_SELECTED_TEXT$1;",
 "",
		  "@api",
		  "get $TM_SELECTED_TEXT$1() {",
			 "return this._$TM_SELECTED_TEXT$1;",
		  "}",
 "",
		  "set $TM_SELECTED_TEXT$1(value) {",
		  "this._$TM_SELECTED_TEXT$1 = value;",
		  "}"
	   ],
	   "description": "lwc getter and setter"
	},
	"_timeout": {
	   "prefix": "dc_timeout",
	   "body": [
		  "// eslint-disable-next-line",
		  "setTimeout(() => {",
			 "$TM_SELECTED_TEXT",
		  "}, (${1:1000});"
	   ],
	   "description": "timeout snippet with selected text wrpaping"
	},
	"lintDisableNextLine": {
	   "prefix": "lintDisableNextLine",
	   "body": [
		  "// eslint-disable-next-line"
	   ],
	   "description": "disable next line"
	},
	"lwc custom event": {
	   "prefix": "lwcEvent",
	   "body": [
		 "this.dispatchEvent(",
		 "      new CustomEvent(\"EVENT_NAME\", {",
		 "        detail: DATA,",
		 "        bubbles: true,",
		 "        composed: true",
		 "      })",
		 "    );"
	   ],
	   "description": "lwc custom event"
	 },
	"Logger usage": {
	   "prefix": "dclogger",
	   "body": [
		 "import upsertLogFromJs from \"@salesforce/apex/Logger.upsertLogFromJs\";",
		 "upsertLogFromJs({ logName: 'test', logMessage: {hello: \"test\", notHello: \"not test\"} });"
	   ],
	   "description": "Logger usage"
	 },
	"register component": {
	   "prefix": "rtcl_register",
	   "body": [
		  "this.wrapper.registerComponent({",
		  "    cmpName: 'HistogramGraphWrapper',",
		  "    cmp: this,",
		  "    remove: true,",
		  "    whiteList: ['testCmp']",
		   "});",
	   ]
	 },
	"change value": {
	   "prefix": "rtcl_change",
	   "body": [
		  "this.wrapper.changeWrapperVal({ path: 'callee.someInnerKey.somethign', val: something })"
	   ]
	 },
	"call component": {
	   "prefix": "rtcl_call_cmp",
	   "body": [
		  "const resp = await super.wrapper.callComponent({",
			 "path: 'CALLE.CMP.METHOD',",
			 "params: PARAM_OBJ",
		   "});"
	   ]
	 },
	"jsdoc type assigment": {
	   "prefix": "jsdoc_typeass",
	   "body": [
		  "/** @type {$1}*/"
	   ]
	 },
 }
```