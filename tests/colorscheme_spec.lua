local Config = require("tokyonight.config")
local Init = require("tokyonight")

before_each(function()
  vim.o.background = "dark"
  vim.cmd.colorscheme("default")
  Config.setup()
end)

it("did proper init", function()
  assert.same("default", vim.g.colors_name)
  assert.same("dark", vim.o.background)
end)

describe("loading colorscheme", function()
  it("loads tokyonight", function()
    vim.cmd.colorscheme("tokyonight")
    assert.same("tokyonight-fire", vim.g.colors_name)
  end)

  it("loads tokyonight-fire", function()
    vim.cmd.colorscheme("tokyonight-fire")
    assert.same("tokyonight-fire", vim.g.colors_name)
  end)

  it("loads tokyonight-whitefire", function()
    vim.cmd.colorscheme("tokyonight-whitefire")
    assert.same("tokyonight-whitefire", vim.g.colors_name)
  end)

  it("can switch between styles", function()
    vim.cmd.colorscheme("tokyonight-fire")
    assert.same("tokyonight-fire", vim.g.colors_name)
    vim.cmd.colorscheme("tokyonight-whitefire")
    assert.same("tokyonight-whitefire", vim.g.colors_name)
  end)
end)
