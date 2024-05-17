```js
const parseBinaryFile = async (fileImportUrl) => {
  let response = undefined;
  let importObject;
  if (!importObject) {
    importObject = {
      env: {
        abort: () => console.error("Abort!"),
      },
    };
  }
  if (WebAssembly.instantiateStreaming) {
    response = await WebAssembly.instantiateStreaming(
      fetch("{! $Resource.program }"),
      importObject
    );
  } else {
    const fetchAndInstantiateTask = async () => {
      const wasmArrayBuffer = await fetch(wasmModuleUrl).then((response) =>
        response.arrayBuffer()
      );
      return WebAssembly.instantiate(wasmArrayBuffer, importObject);
    };
    response = await fetchAndInstantiateTask();
  }
  return response;
};
let add;
let sub;
parseBinaryFile("{! $Resource.program }").then((response) => {
  add = response.instance.exports.add;
  sub = response.instance.exports.sub;
});

setTimeout(() => {
  console.log(sub(25, 9));
}, 1000);
```