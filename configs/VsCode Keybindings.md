```JSON
// Place your key bindings in this file to override the defaults
[
  {
    "key": "alt+a",
    "command": "editor.action.insertSnippet",
    "when": "editorLangId == javascript",
    "args": {
      "langId": "javascript",
      "name": "adds method header"
    }
  },
  {
    "key": "alt+a",
    "command": "editor.action.insertSnippet",
    "when": "editorLangId == apex",
    "args": {
      "langId": "apex",
      "name": "adds method header"
    }
  },
  {
    "key": "alt+q",
    "command": "sfdx.deploy.current.source.file"
  },
  {
    "key": "alt+w",
    "command": "sfdx.set.default.org"
  },
  {
    "key": "alt+e",
    "command": "gitlens.graph.openSCM"
  },
  {
    "key": "alt+e",
    "command": "workbench.view.scm",
    "when": "workbench.scm.active && !gitlens:disabled && config.gitlens.keymap == 'chorded'"
  },
  {
    "key": "ctrl+shift+g g",
    "command": "-workbench.view.scm",
    "when": "workbench.scm.active && !gitlens:disabled && config.gitlens.keymap == 'chorded'"
  },
  {
    "key": "ctrl+e",
    "command": "workbench.view.explorer",
    "when": "viewContainer.workbench.view.explorer.enabled"
  },
  {
    "key": "ctrl+shift+e",
    "command": "-workbench.view.explorer",
    "when": "viewContainer.workbench.view.explorer.enabled"
  },
  {
    "key": "ctrl+e",
    "command": "workbench.action.quickOpenNavigatePreviousInFilePicker",
    "when": "inFilesPicker && inQuickOpen"
  },
  {
    "key": "ctrl+shift+e",
    "command": "-workbench.action.quickOpenNavigatePreviousInFilePicker",
    "when": "inFilesPicker && inQuickOpen"
  },
  {
    "command": "vscode-neovim.send",
    "key": "ctrl+s",
    "when": "neovim.mode = insert",
    "args": "<Esc>:w<cr>"
  },
  {
    "key": "alt+w",
    "command": "sf.set.default.org"
  },
  {
    "key": "alt+q",
    "command": "sf.deploy.current.source.file"
  },
  {
    "command": "workbench.action.focusActiveEditorGroup",
    "key": "alt+`",
  },
  // Create new file
  {
    "key": "c",
    "command": "explorer.newFile",
    "when": "explorerViewletFocus && !inputFocus"
  },
  // create folder
  {
    "key": "f",
    "command": "explorer.newFolder",
    "when": "explorerViewletFocus && !inputFocus"
  },
  // Rename file
  {
    "key": "r",
    "command": "renameFile",
    "when": "filesExplorerFocus && !inputFocus"
  },
  // Delete file
  {
    "key": "d",
    "command": "deleteFile",
    "when": "filesExplorerFocus && !inputFocus"
  },
  {
    "key": "alt+r",
    "command": "workbench.action.toggleActivityBarVisibility"
  },
  {
    "key": "alt+g",
    "command": "git.checkout"
  },
]


```

