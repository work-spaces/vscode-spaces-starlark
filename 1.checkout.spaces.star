"""
SDK for building the extension
"""

load("//@star/packages/star/coreutils.star", "coreutils_add_rs_tools")
load("//@star/packages/star/node.star", "node_add")
load("//@star/sdk/star/ws.star", "workspace_get_path_to_checkout")
load("//@star/packages/star/spaces-cli.star", "spaces_add_star_formatter", "spaces_isolate_workspace")
load("//@star/packages/star/starship.star", "starship_add_bash")

spaces_isolate_workspace("spaces0", "v0.15.22", system_paths = ["/usr/bin", "/bin"])
spaces_add_star_formatter("star_formatter", configure_zed = True, deps = ["spaces0"])
coreutils_add_rs_tools("coreutils0", deps = ["rust_toolchain"])

node_add("node0", version = "v25.2.1")

CHECKOUT_PATH = workspace_get_path_to_checkout()

SHORTCUTS = {
    "compile": "spaces run //{}:install_dev".format(CHECKOUT_PATH),
    "publish": "spaces run //{}:install_dev_lsp".format(CHECKOUT_PATH),
}

starship_add_bash("starship0", shortcuts = SHORTCUTS)
