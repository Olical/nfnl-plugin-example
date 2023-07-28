-- [nfnl] Compiled from fnl/spec/nfnl/example_spec.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("plenary.busted")
local describe = _local_1_["describe"]
local it = _local_1_["it"]
local assert = require("luassert.assert")
local core = require("nfnl-plugin-example.nfnl.core")
local function _2_()
  local function _3_()
    return assert.equals(1, core.first({1, 2, 3}))
  end
  it("gets the first value", _3_)
  local function _4_()
    assert.is_nil(core.first(nil))
    return assert.is_nil(core.first({}))
  end
  return it("returns nil for empty lists or nil", _4_)
end
return describe("first", _2_)
