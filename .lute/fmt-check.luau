const process = require("@std/process")

const p = process.run({ "stylua", "-c", ".lute", "src" }, { stdio = "inherit" })
if not p.ok then
    process.exit(p.exitcode)
else
    print("No format issue found...")
end
