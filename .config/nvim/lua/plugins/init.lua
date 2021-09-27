-- ============================================================================
--                Configuration of the packer plugins
-- ============================================================================
-- We 're going to use packer: https://github.com/wbthomason/packer.nvim
-- In Ubuntu systems, you can use with:
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim\
-- ~/.local/share/nvim/site/pack/packer/start/packer.nvim I used the
-- ./site/pack/packer/start/packer.nvim to install the package instead the
-- website which is given up,
-- And then we can run :PackerSync which will download/install any package we
-- specify.
--

-- if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
--   vim.api.nvim_command('echohl WarningMsg | echom "use native build nvim 5.0 for faster performance, [message by me Ghasak] located at config.init.lua" | echohl None')
-- else
--   vim.api.nvim_command('echohl WarningMsg | echom "nvim v.5.0 is already installed" | echohl None')
-- end

-- checking if packer is already installed ..
require("plugins.plugins-loader").init()


local use = require('packer').use

require('packer').startup({function()
     -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- add other use .. for other packages
    -- Theme of Gruvbox.nvim
    -- use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
    --use 'eddyekofo94/gruvbox-flat.nvim'
    --use 'gruvbox-community/gruvbox'

-- ===========================================================================
-- 	                      Programming Language Servers
-- ===========================================================================
     -- lsp stuff
    use {
      "kabouzeid/nvim-lspinstall",
      setup = function()
         require("core.utils").packer_lazy_load "nvim-lspinstall"
         -- reload the current file so lsp actually starts for it
         vim.defer_fn(function()
            vim.cmd "silent! e %"
         end, 0)
      end,
    }

    use {
      "neovim/nvim-lspconfig",
      after = "nvim-lspinstall",
      config = function ()
        require("plugins.configs.lspconfig")
      end,
    }

    use {
      "ray-x/lsp_signature.nvim",
      after = "nvim-lspconfig",
    }

    use {
      "andymass/vim-matchup",
      setup = function()
         require("core.utils").packer_lazy_load "vim-matchup"
      end,
    }
    -- load luasnips + cmp related in insert mode only

   use {
      "hrsh7th/nvim-cmp",
      requires = {
        "hrsh7th/cmp-buffer",
        "octaltree/cmp-look",
        --"hrsh7th/cmp-path",
        --"hrsh7th/cmp-calc",
        -- "f3fora/cmp-spell",
        -- "hrsh7th/cmp-emoji",
        -- "ray-x/cmp-treesitter",
      },
      event = "InsertEnter",
      config = function()
         require "plugins.configs.cmp"
      end,

    }

   use {
      "L3MON4D3/LuaSnip",
      wants = "friendly-snippets",
      after = "nvim-cmp",
      config = function()
         require("plugins.configs.others").luasnip()
      end,
   }

   use {
      "saadparwaiz1/cmp_luasnip",
      after = "LuaSnip",
   }

   use {
      "hrsh7th/cmp-nvim-lua",
      after = "cmp_luasnip",
   }

   use {
      "hrsh7th/cmp-nvim-lsp",
      after = "cmp-nvim-lua",
   }

   use {
      "hrsh7th/cmp-buffer",
      after = "cmp-nvim-lsp",
   }

   use {
      "rafamadriz/friendly-snippets",
      after = "cmp-buffer",
   }
  -- tags with vista (compatible with clap)
  -- Showing all funtions and parameters in the buffer, see also <ctags>
   use {"liuchengxu/vista.vim",
  }

  -- Adding symbols outline (similar to vista)
  use {'simrat39/symbols-outline.nvim',
  config = function ()
      require("plugins.configs.mySymbolsOutline").init()
    end
  }

-- ===========================================================================
-- 	                       Aesthetics Plugins
-- ===========================================================================
   use {"NvChad/nvim-base16.lua",
      after = "packer.nvim",
      config = function()
         require("colors").init()
      end,
   }
    -- Using onedark theme
    use {'navarasu/onedark.nvim'}
    -- Using gruvbox theme
    use 'morhetz/gruvbox'
    use {'tpope/vim-fugitive'}
    use {'vim-airline/vim-airline'}
    -- To show the diff of file
    use {'airblade/vim-gitgutter'}
    use {'ryanoasis/vim-devicons'}
    -- Used with Telescope
    use {'nvim-lua/plenary.nvim'}

    -- New collections of themes
    use { "NLKNguyen/papercolor-theme" }
    use { "folke/tokyonight.nvim" }
    use { "sainnhe/everforest" }
    use { "folke/lsp-colors.nvim" }
    -- Using BufferLine to give a nice tab shape with icons and other config
    -- Source: https://github.com/akinsho/bufferline.nvim
    use {'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
          require("plugins.configs.myBufferConfig").setup()
        end,
        }
    -- Using Indent blankline, specially useful for python
    -- Source:
    use {"lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    config = function() require("plugins.configs.myIndentBlankLine").init()
    end}

    -- smooth scroll
    use {
        "karb94/neoscroll.nvim",
        config = function()
          require("plugins.configs.others").neoscroll()
        end
     }
    -- This will  highlight the colors as #558817
    use {
        "norcalli/nvim-colorizer.lua",
        event = "BufRead",
        config = function()
             require("plugins.configs.others").colorizer()
        end,
    }

    use {
      "nvim-treesitter/nvim-treesitter",
      event = "BufRead",
      config = function()
       require "plugins.configs.treesitter"
      end,
    }
   -- misc plugins
   use {
      "windwp/nvim-autopairs",
      after = "nvim-cmp",
      config = function()
         require("plugins.configs.others").autopairs()
      end,
   }

   -- Clear highlight when you search for a word automatically
   use { "romainl/vim-cool",
   config = function ()
             vim.g.CoolTotalMatches = 1
           end}

  -- Markdown, Markup-language better view (two plugins)
   use{'npxbr/glow.nvim',
        config = function ()
              require("plugins.configs.myGlowMark")
        end
      }

  -- Using MarkdownPreview
  use { "iamcco/markdown-preview.nvim", run = "cd app && yarn install" }

  -- Delete a buffer and keep your opened windows intact
  -- Bdelete == bd (buffer delete)
  use {'famiu/bufdelete.nvim'}


-- ===========================================================================
--           Navigation and Searching
-- ===========================================================================
    -- Using floating terminal
    use {'voldikss/vim-floaterm'}
    -- Using Rnvim  <Ranger>
    use {'kevinhwang91/rnvimr',
    config = function()
      require("plugins.configs.myRanger").Style()
    end

  }
    -- Telescope
    use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function ()
      require("plugins.configs.myTelescope")
    end
      }
    -- Undo tree (for recover any mistake in the buffer)
    use {'mbbill/undotree',
    config = function ()
      require("plugins.configs.myUndoTreeConfig")
    end

  }
    -- Nvim-Tree for navigation
    use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
          require("plugins.configs.myNvimTree")
        end}

--     use {"kyazdani42/nvim-tree.lua",
--     config = function ()
--       vim.g.nvim_tree_indent_markers = 1
--       require("plugins.configs.myNvimTree")
--     end
--   }

  -- Ctrl + P searching
  use {'ctrlpvim/ctrlp.vim',
      config = function ()
        local cmd = vim.cmd
        -- Allow the ctrlP to not search the .git repository.
        cmd[[
          let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
        ]]

      end

      }

  -- clap (offer directory autocomplete)
  use {"liuchengxu/vim-clap"}

  -- Adding Sneak for easily navigating (with S)
  use {"justinmk/vim-sneak",
        config = function ()
            require("plugins.configs.sneak")
        end
      }

  -- Better repeat (.) with nvim (from tpope)
  use {"tpope/vim-repeat"}

  -- Better surrounding
  use {"tpope/vim-surround"}

  -- fuzzy finder
  -- use {'vijaymarupudi/nvim-fzf'}
  use{'junegunn/fzf'}
  use{'junegunn/fzf.vim'}


  -- Dashboard
  use {
    "glepnir/dashboard-nvim",
    config = function()
      require("plugins.configs.dashboard").setup()
    end,
  }


-- ===========================================================================
--                            Git and Diff
-- ===========================================================================
    use {"APZelos/blamer.nvim",
    config = function ()
      require("plugins.configs.myGitBlamer").BlamerSetting()
    end
  }
  -- adding (+/-) for diff, in the Gutter
    use{'mhinz/vim-signify'}

-- ===========================================================================
--                          Other Plugins
-- ===========================================================================
      -- At the moment I am using spell checking from coc, only
      --  use {'neoclide/coc.nvim', branch = 'release',
      --  setup = function()
      --       require("core.utils").packer_lazy_load "vim-matchup"
      --    end,
      --  }

      --  -- Spell Checker
      -- Spell checking
      use{'kamykn/spelunker.vim',
          config = function ()
              require("plugins.configs.spellChecking").setup()
          end
      }
      -- configure
      use {
      'lewis6991/spellsitter.nvim',
          config = function()
              require('spellsitter').setup()
          end
      }

      -- This is necessary to create popmenu to the spell checking
      use {'kamykn/popup-menu.nvim'}
      -- Using next word
      --  use{'prabirshrestha/asyncomplete.vim'}
      --  use{'prabirshrestha/async.vim'}
      --  use{'high-moctane/asyncomplete-nextword.vim'}
      -- Replace word with register
      use {'vim-scripts/ReplaceWithRegister'}
      --  -- Copy and paste from clipboard into your nvim
      use {'christoomey/vim-system-copy'}
      -- Using accelerator for j and k
      -- Source: https://github.com/rhysd/accelerated-jk
      use {"rhysd/accelerated-jk"}
end,
-- ===========================================================================
--             Packer Feature (floating window and profiling )
-- ===========================================================================
-- ALlow Packer to be floating window
config = {
  display = {
    open_fn =  require('packer.util').float,

  },

-- Profile the packages, show the time it takes to load package
  profile = {
    enable = true,
-- the amount in ms that a plugins load time must be over for it to be included
-- in the profile
    threshold = 1
  }
},

})

-- ===========================================================================
--                       Applying the theme
-- ===========================================================================a

local function theme_loader()
      local fn = vim.fn
          local install_path = fn.stdpath "data" .. "/site/pack/packer/start/gruvbox"
          if fn.empty(fn.glob(install_path)) > 0 then
              vim.api.nvim_command('echohl WarningMsg | echom "color scheme: Gruvbox is not installed yet!, will be installed and loaded after using PackerSync!!"| echohl None')
          else
              vim.cmd[[colorscheme gruvbox]] -- Others:  gruvbox-flat, onedark
              vim.o.background = "dark" -- or "light" for light mode
      end
end



local function buffer_line()
local fn = vim.fn
  local install_path = fn.stdpath "data" .. "/site/pack/packer/opt/bufferline.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    vim.api.nvim_command('echohl WarningMsg |echom "bufferline package will be loaded next time" | echohl None')
  else
      require("bufferline").setup{}
  end
end

-- Calling at startup
theme_loader()
--buffer_line() -- needed only at beginning to install the  configurations
