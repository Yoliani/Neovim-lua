local present, packer = pcall(require, "plugins.packerInit")

if not present then
  return false
end

local use = packer.use
return packer.startup(
  function()
    use "wbthomason/packer.nvim"
    use {"lewis6991/impatient.nvim", rocks = "mpack"}
    --Highlight
    use {"nvim-treesitter/nvim-treesitter", config = require("plugins.configs.treesitter-nvim")}
    use {
      "kristijanhusak/orgmode.nvim",
      config = function()
        require("orgmode").setup {}
      end
    }
    -- use "sheerun/vim-polyglot"
    --Langs, testing  and autocompletion

    --LSP
    use "neovim/nvim-lspconfig"
    use "jose-elias-alvarez/null-ls.nvim"
    use "jose-elias-alvarez/nvim-lsp-ts-utils"
    use "nvim-lua/lsp_extensions.nvim"
    --use "glepnir/lspsaga.nvim"
    use {"tami5/lspsaga.nvim"}
    use "onsails/lspkind-nvim"
    use {
      "ray-x/lsp_signature.nvim"
    }
    -- use "kabouzeid/nvim-lspinstall"
    use "williamboman/nvim-lsp-installer"
    use "mfussenegger/nvim-jdtls"
    --CMP
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/nvim-cmp"
    use {"tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp"}
    use "saadparwaiz1/cmp_luasnip"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/cmp-vsnip"
    use {
      "Yoliani/cmp-npm",
      requires = {
        "nvim-lua/plenary.nvim"
      }
    }

    --Github Copílot
    use "github/copilot.vim"
    --Langs
    use {"akinsho/flutter-tools.nvim", requires = "nvim-lua/plenary.nvim"}
    --Flutter Language
    use "simrat39/rust-tools.nvim" -- Rust Language
    --For tests
    use {"mfussenegger/nvim-dap"}
    use {"nvim-telescope/telescope-dap.nvim"}
    use {"mfussenegger/nvim-dap-python"}

    --File managing and picker
    use "kyazdani42/nvim-tree.lua"
    use "kyazdani42/nvim-web-devicons"
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-media-files.nvim"
    use "nvim-lua/popup.nvim"

    --SNIPPETS
    use "hrsh7th/vim-vsnip"
    use "hrsh7th/vim-vsnip-integ"
    use "SirVer/ultisnips"
    use "mlaursen/vim-react-snippets"
    use "rafamadriz/friendly-snippets"
    use "L3MON4D3/LuaSnip"
    ---------------------MISC---------------------
    use "folke/which-key.nvim"
    use {"lukas-reineke/indent-blankline.nvim"}
    use "karb94/neoscroll.nvim"
    use "vhyrro/neorg" --TAke Notes
    --Discord presence
    use "andweeb/presence.nvim"
    use {"ellisonleao/glow.nvim"}
    --Replace nvim tree
    use {"ms-jpq/chadtree", run = "python3 -m chadtree deps"}
    use {"ptzz/lf.vim", requires = {"voldikss/vim-floaterm"}}
    --For markdown
    use {"iamcco/markdown-preview.nvim", run = [[sh -c 'cd app && yarn install']]}
    use "windwp/nvim-autopairs"
    use "norcalli/nvim-colorizer.lua"
    -- rauinbow brackets
    use "luochen1990/rainbow"
    -- Autoclose tags
    use "windwp/nvim-ts-autotag"
    --Reload --Reload and Restart
    use "famiu/nvim-reload"
    use "SmiteshP/nvim-gps"
    use "waylonwalker/Telegraph.nvim"
    -- Usefyul comments
    use {
      "numToStr/Comment.nvim"
    }
    use "rcarriga/nvim-notify"
    use "nvim-lua/plenary.nvim"
    --startuptime
    use "tweekmonster/startuptime.vim"
    -- Close tags
    use "alvan/vim-closetag"
    -- Multicursor
    use "mg979/vim-visual-multi"
    use "goolord/alpha-nvim"

    use {
      "luukvbaal/stabilize.nvim",
      config = function()
        require("stabilize").setup()
      end
    }
    --use "glepnir/dashboard-nvim"
    use {
      "rmagatti/goto-preview",
      config = function()
        require("goto-preview").setup {}
      end
    }
    --UI
    use "MunifTanjim/nui.nvim"
    use "ggandor/lightspeed.nvim"
    --Comments
    use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim"
    }

    --tmux
    use "christoomey/vim-tmux-navigator"
    use "preservim/vimux"
    --GIT
    use "sindrets/diffview.nvim"
    use "lewis6991/gitsigns.nvim"

    --THEMEs
    use "folke/tokyonight.nvim"
    use "navarasu/onedark.nvim"
    use "EdenEast/nightfox.nvim"
    use "marko-cerovac/material.nvim"
    use "eddyekofo94/gruvbox-flat.nvim"
    use "shaunsingh/nord.nvim"
    use "JoosepAlviste/palenightfall.nvim"
    use "Mofiqul/vscode.nvim"
    use "LunarVim/onedarker.nvim"
    use "shaunsingh/moonlight.nvim"
    use "rebelot/kanagawa.nvim"

    --use "Pocco81/Catppuccino.nvim"
    use "catppuccin/nvim"

    --Statusline and bufferline
    -- use {
    --   "nvim-lualine/lualine.nvim",
    --   requires = {"kyazdani42/nvim-web-devicons", opt = true}
    -- }
    use "glepnir/galaxyline.nvim"

    use "akinsho/nvim-bufferline.lua"

    --Formatters
    use "mhartington/formatter.nvim"
    use "sbdchd/neoformat"
    --Fennel
    --    use "Olical/aniseed"
    --    use {
    --      "rktjmp/hotpot.nvim",
    --      -- packer says this is "code to run after this plugin is loaded."
    --      -- but it seems to run before plugin/hotpot.vim (perhaps just barely)
    --      config = function()
    --        require("hotpot")
    --      end
    --    }
  end,
  {
    display = {
      border = {"┌", "─", "┐", "│", "┘", "─", "└", "│"}
    }
  }
)
