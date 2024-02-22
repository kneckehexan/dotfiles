local g = vim.g
local is_x_display = require("util").is_x_display

local in_wsl = os.getenv('WSL_DISTRO_NAME') ~= nil

if in_wsl then
  g.clipboard = {
      name = 'WslClipboard',
      copy = {
          ['+'] = 'clip.exe',
          ['*'] = 'clip.exe',
      },
      paste = {
          ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
          ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
      },
      cache_enabled = 0,
  }
end
