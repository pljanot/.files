Pattern:
https://github.com/ThePrimeagen/.dotfiles/blob/master/tmux/.tmux.conf

Todo:
make install of dependencies like
- scripts
- xclip

Recently improved
xclip - copy tmux | vim | browser 
tmux-sessionizer - (fzf + tmux ls)

----
Nvim init.lua small modifications 
+ todo-floating wind :Td
+ git plugins - :Git , :Gitdiff <branch>, :Git commit -m '<message>', :Git push origin HEAD
+ git stage files via telescope <leader>ss -> git_status -> <tab> to stage

```bash
"tpope/vim-fugitive", -- Fugitive is the premier Vim plugin for Git.
"tpope/vim-rhubarb", -- If fugitive.vim is the Git, rhubarb.vim is the Hub. 


	{
		"vimichael/floatingtodo.nvim",
		config = function()
			require("floatingtodo").setup({
				target_file = "~/notes/todo.md",
				border = "single", -- single, rounded, etc.
			})
		end,
	},
```
