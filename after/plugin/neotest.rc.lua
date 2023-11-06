require("neotest-gtest").setup({})
require("neotest").setup({
  adapters = {
    require("neotest-gtest")
  }
})
