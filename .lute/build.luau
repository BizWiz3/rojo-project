const process = require("@std/process")
const platform = require("@std/system/platform")
require("./env")

const FILE_NAME = process.env.FILE_NAME

const p1 = process.run({ "rojo", "build", "-o", FILE_NAME }, { stdio = "inherit" })
if not p1.ok then
    process.exit(p1.exitcode)
end

if not platform.linux then
    print(`\nLaunching {FILE_NAME}...`)
    process.system(`{FILE_NAME})`)
else
    const p2 = process.system(`grep -qi microsoft /proc/version && echo "WSL" || echo "NativeLinux"`)
    if not p2.ok then
        print(p2.stderr)
        process.exit(p2.exitcode)
    end

    const s = p2.stdout:match("^%s*(%a+)%s*$")

    if s ~= "WSL" then
        print(`\nUnable to launch "{FILE_NAME}". Open it manually.`)
        process.exit(1)
    end

    print(`\nLaunching {FILE_NAME}...`)
    process.system(`explorer.exe "$(wslpath -w {FILE_NAME})"`)
end
