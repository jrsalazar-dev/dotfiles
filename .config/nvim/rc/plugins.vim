" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------
set nocompatible

call plug#begin('~/.config/nvim/Plug')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
" Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'plasticboy/vim-markdown'
" Plug 'airblade/vim-gitgutter'
" Plug 'ColinKennedy/vim-gitgutter'
Plug 'tpope/vim-speeddating'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'dbakker/vim-projectroot'
" Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plug 'JulesWang/css.vim'
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'nazo/pt.vim'
" Plug 'StanAngeloff/php.vim'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'scrooloose/nerdcommenter'
" Plug 'mihaifm/bufstop'
Plug 'shime/vim-livedown'
Plug 'jiangmiao/auto-pairs'
" Plug 'Shougo/unite.vim'
" Plug 'xsbeats/vim-blade'
Plug 'bling/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'kristijanhusak/vim-multiple-cursors'
" Plug 'othree/html5.vim'
" Plug 'tpope/vim-markdown'
Plug 'tpope/vim-abolish'
" Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'qbbr/vim-twig'
" Plug 'posva/vim-vue'
Plug 'scrooloose/nerdtree'
" Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'Shougo/vimproc'
Plug 'jistr/vim-nerdtree-tabs'
" Plug 'benekastah/neomake'
" Plug 'dense-analysis/ale'
Plug 'heavenshell/vim-jsdoc'
Plug 'djoshea/vim-autoread'
Plug 'suan/vim-instant-markdown'
" Plug 'wlangstroth/vim-racket'
Plug 'christoomey/vim-tmux-navigator'
Plug 'amadeus/vim-mjml'
Plug 'janko/vim-test'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'neoclide/coc-tabnine'
" Plug 'arcticicestudio/nord-vim'
" Plug 'lifepillar/vim-solarized8'
Plug 'jparise/vim-graphql'
" Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
" Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
" Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'vim-airline/vim-airline-themes'
" Plug 'jason0x43/vim-js-indent'
" Plug 'peitalin/vim-jsx-typescript'
Plug 'phanviet/vim-monokai-pro'
" Plug 'prettier/vim-prettier', {
"   \ 'do': 'npm install',
"   \ 'for': ['javascript', 'typescript', 'vue'] }

" Plug 'arnaud-lb/vim-php-namespace'
Plug 'noahfrederick/vim-laravel'
Plug 'editorconfig/editorconfig-vim'
" Plug 'APZelos/blamer.nvim'
Plug 'lifepillar/vim-solarized8'
" Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
" Plug 'wookayin/fzf-ripgrep.vim'
" Plug 'ryanoasis/vim-devicons'
Plug 'samoshkin/vim-mergetool'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'm-pilia/vim-ccls'
Plug 'rhysd/vim-clang-format'
Plug 'ton/vim-bufsurf'
Plug 'voldikss/vim-floaterm'
Plug 'lervag/vimtex'
Plug 'nikvdp/ejs-syntax'
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}
Plug 'pantharshit00/vim-prisma'
Plug 'Quramy/vim-js-pretty-template'
" Plug 'lambdalisue/fern.vim'
" Plug 'lambdalisue/nerdfont.vim'
" Plug 'lambdalisue/fern-renderer-nerdfont.vim'
" Plug 'lambdalisue/fern-hijack.vim'

call plug#end()
