-- [nfnl] Compiled from fnl/nfnl-plugin-example/init.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl-plugin-example.nfnl.module")
local autoload = _local_1_["autoload"]
local notify = autoload("nfnl-plugin-example.nfnl.notify")
local function setup()
  return notify.info("Hello, World!")
end
return {setup = setup}
