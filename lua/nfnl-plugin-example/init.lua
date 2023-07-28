-- [nfnl] Compiled from fnl/nfnl-plugin-example/init.fnl by https://github.com/Olical/nfnl, do not edit.
local notify = require("nfnl-plugin-example.nfnl.notify")
local function setup()
  return notify.info("Hello, World!")
end
return {setup = setup}
