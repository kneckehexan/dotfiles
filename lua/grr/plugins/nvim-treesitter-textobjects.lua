return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  lazy = true,
  config = function()
    require("nvim-treesitter.configs").setup({
      textobjects = {
        select = {
          enable = true,

          -- Automatically jump forward to textobj, similar to targets.vim
          lookahead = true,

          keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ["a="] = { query = "@assignment.outer", desc = "Select outer part of an assignement"},
            ["i="] = { query = "@assignment.inner", desc = "Select inner part of an assignement"},
            ["l="] = { query = "@assignment.lhs", desc = "Select left hand side of an assignement"},
            ["r="] = { query = "@assignment.rhs", desc = "Select right hand side of an assignement"},

            ["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument"},
            ["ia"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument"},

            ["ai"] = { query = "@contitional.outer", desc = "Select outer part of a conditional"},
            ["ii"] = { query = "@contitional.inner", desc = "Select outer part of a conditional"},

            ["al"] = { query = "@loop.outer", desc = "Select outer part of a loop"},
            ["il"] = { query = "@loop.inner", desc = "Select outer part of a loop"},

            ["af"] = { query = "@call.outer", desc = "Select outer part of a function call"},
            ["if"] = { query = "@call.inner", desc = "Select outer part of a function call"},

            ["am"] = { query = "@call.outer", desc = "Select outer part of a method/function definition"},
            ["im"] = { query = "@call.inner", desc = "Select outer part of a method/function definition"},

            ["ac"] = { query = "@call.outer", desc = "Select outer part of a class"},
            ["ic"] = { query = "@call.inner", desc = "Select outer part of a class"},
          },
        },
        swap = {
          enable = true,
          swap_next = {
            ["<leader>na"] = "@parameter.inner", -- swap paramters/arguments with next
            ["<leader>nm"] = "@function.outer", -- swap function with next
          },
          swap_previous = {
            ["<leader>pa"] = "@parameter.inner", -- swap paramters/arguments with prev 
            ["<leader>pm"] = "@function.outer", -- swap function with prev
          },
        },
      },
    })
  end,
}
