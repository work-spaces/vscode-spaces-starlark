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
    visibility = visibility_private()
)

run_add_exec(
    "npm_run_compile",
    command = "npm",
    args = ["install"],
    deps = ["npm_install"],
    visibility = visibility_private()
)

run_add_exec(
    "compile",
    command = "npm",
    args = ["exec", "@vscode/vsce", "package"],
    deps = ["npm_run_compile"],
    visibility = visibility_private()
)

run_add_exec(
    "publish",
    command = "npm",
    args = ["exec", "@vscode/vsce", "package"],
    deps = ["npm_run_compile"],
    visibility = visibility_private()
)