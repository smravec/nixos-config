{config, pkgs, ...}:
{
  #Some useful keybinds
  #$ go to end of the line
  #0 go to start of the line
  #shift + g go to bottom of the file
  #g + g go to start of the file
  #shift + up/down arrow scroll faster
  programs.neovim.enable = true;

  #Autocompletion
  #ctrl + y to autocomplete
  programs.neovim.coc.enable = true;
 
  programs.neovim.plugins = [
    #Theme
    { plugin = pkgs.vimPlugins.onehalf;
      config = ''
        set background=dark
        colorscheme onehalfdark
        let g:airline_theme='onehalfdark'
        hi Normal guibg=NONE ctermbg=NONE
        hi LineNr guibg=NONE ctermbg=NONE
        hi SignColumn guibg=NONE ctermbg=NONE
        hi EndOfBuffer guibg=NONE ctermbg=NONE
        hi Visual cterm=none ctermbg=darkgrey ctermfg=white
      '';
    }

    #File browser
    #ctrl + b to open
    #ctrl + w + w to switch focus
    { plugin = pkgs.vimPlugins.nerdtree;
      config = ''
        nnoremap <silent> <C-b> :NERDTreeToggle<CR>
        let g:NERDTreeShowHidden = 1
        let g:NERDTreeMinimalUI = 1
        let g:NERDTreeIgnore = []
        let g:NERDTreeStatusline = ""
        highlight NERDTreeCWD ctermfg=white
        " Exit Vim if NERDTree is the only window remaining in the only tab.
        autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
      '';
    }

    #Icons
    pkgs.vimPlugins.vim-devicons
    
    #Language support
    pkgs.vimPlugins.vim-nix
    pkgs.vimPlugins.coc-python
    pkgs.vimPlugins.coc-go
    pkgs.vimPlugins.vim-javascript
    pkgs.vimPlugins.coc-css
    pkgs.vimPlugins.coc-emmet
    pkgs.vimPlugins.coc-html
    pkgs.vimPlugins.coc-json
  ];

  programs.neovim.extraConfig = ''
    set number
    syntax on
    set shiftwidth=2
    set smarttab
    set clipboard+=unnamedplus 
  '';
}
