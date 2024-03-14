local env = require("env")

return {
	"lervag/vimtex",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local g = vim.g

		g.vimtex_view_general_viewer = env.VIMTEX_WSL_VIEWER_SCRIPT
		g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
	end,
}
-- Viewer script. Modified version of https://github.com/lervag/vimtex/issues/2566#issuecomment-1322886643
-- #!/bin/zsh
-- # This script is used to let the SumatraPDF open the pdf after path conversion
--
-- new_arg=()                 # ceate arguments array
-- declare -i idxMntOccur=0
--
-- for arg ($@) {
--   larg=$(readlink -vf "$arg") #<-- new line
--   echo "$larg"
--   if [[ "$larg" == /mnt* ]] { #<-- change to $larg
--     # convert to windows style path
--     idxMntOccur=idxMntOccur+1
--     winPath=$(wslpath -w $larg) #<-- change to $larg and from 'm' to 'w' option
--     new_arg=$winPath #<-- remove '+'
--
--     if (($idxMntOccur == 1)) {
--       # convert the path in .syntex to windows style
--       # run only "/mnt/d" like path is detected
--       find ${PWD} -maxdepth 1 -name "*.synctex.gz" -execdir \
--         bash -c 'cat "{}" | gunzip | sed --expression="s@/mnt/\(.\)/@\1:/@g" | gzip > "{}.tmp" && mv "{}.tmp" "{}"' \;
--     }
--   } else {
--     new_arg=$(readlink -vf "$arg") #<-- added -v option and removed '+'
--   }
-- }
--
-- $(
