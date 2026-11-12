const process = require("@std/process")

const ENV: { [string]: string } = {
    ROJO_SYNCBACK_DEBUG = "1",
    FILE_NAME = "game.rbxlx",
}

for i, v in ENV do
    process.env[i] = v
end

return nil
