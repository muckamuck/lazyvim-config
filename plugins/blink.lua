return {
  {
    "saghen/blink.cmp",
    config = function()
      local blink = require("blink.cmp")
      blink.setup({
        completion = {
          menu = {
            auto_show = function(ctx)
              return ctx.mode ~= "cmdline"
            end,
          },
        },
        keymap = {
          -- set to 'none' to disable the 'default' preset
          preset = "default",

          ["<S-Tab>"] = { "select_prev", "fallback" },
          ["<Tab>"] = { "select_next", "fallback" },
          ["<CR>"] = { "select_and_accept", "fallback" },
        },
      })
    end,
  },
}
