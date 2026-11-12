const process = require("@std/process")

const p = process.run({ "stylua", ".lute", "src" }, { stdio = "inherit" })
if not p.ok then
    process.exit(p.exitcode)
else
    print("Done formatting...")
end
