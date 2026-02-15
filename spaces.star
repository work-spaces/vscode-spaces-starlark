load("//@star/sdk/star/run.star", "run_add_exec")
#load("//@star/sdk/star/visibility.star", "run_add_exec")
# npm install
# npm run compile

run_add_exec(
    "npm_install",
    command = "npm",
    args = ["install"],
)

run_add_exec(
    "npm_run_compile",
    command = "npm",
    args = ["install"],
)
