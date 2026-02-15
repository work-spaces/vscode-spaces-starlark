# vscode-spaces-starlark

This is the VSCode extension to use `spaces run-lsp` in VSCode.

This will serve `*.star` files in a `spaces` workspace.


To build this extension using `spaces`:

```sh
spaces checkout-repo --url=https://github.com/work-spaces/vscode-spaces-starlark \
    --rev=main \
    --name=vscode-spaces-starlark-workspace
cd vscode-spaces-starlark-workspace
spaces run //vscode-spaces-starlark:create_package
```