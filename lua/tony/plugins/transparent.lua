return {
  "xiyaowong/transparent.nvim",
  config = function()
    local transparent = require('transparent')

    transparent.clear_prefix('telescope')

    transparent.setup({
      extra_groups = {
        "LspFloatWinNormal",
        "Normal",
        "NormalFloat",
        "FloatBorder",
        "TelescopeNormal",
        "TelescopeBorder",
        "TelescopePromptBorder",
        "SagaBorder",
        "SagaNormal",
      },
    })
  end
}
