const process = require("@std/process")
require("./env")

const FILE_NAME = process.env.FILE_NAME

const p = process.run({ "rojo", "syncback", "-i", FILE_NAME }, { stdio = "inherit" })
if not p.ok then
    process.exit(p.exitcode)
end
