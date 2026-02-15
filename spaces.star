"""

"""

load("//@star/sdk/star/run.star", "run_add_exec")
load("//@star/sdk/star/visibility.star", "visibility_private")
# npm install
# npm run compile

run_add_exec(
    "npm_install",
    command = "npm",
    args = ["install"],
    visibility = visibility_private(),
    working_directory = ".",
)

run_add_exec(
    "npm_install_client",
    command = "npm",
    args = ["install"],
    visibility = visibility_private(),
    working_directory = "./client",
)

run_add_exec(
    "npm_install_language_client",
    command = "npm",
    args = ["install", "@vscode/vsce", "vscode-languageclient"],
    deps = ["npm_install_client"],
)

run_add_exec(
    "npm_run_compile",
    command = "npm",
    args = ["install"],
    deps = ["npm_install", "npm_install_language_client"],
    visibility = visibility_private(),
    working_directory = ".",
)

run_add_exec(
    "compile",
    command = "npm",
    args = ["exec", "@vscode/vsce", "package"],
    deps = ["npm_run_compile"],
    visibility = visibility_private(),
    working_directory = ".",
)

