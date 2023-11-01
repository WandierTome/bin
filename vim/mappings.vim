" -----------------------------------------------------------------------------
" Mapeamento de teclas
" -----------------------------------------------------------------------------

" Teclar ';' para entrar no modo comando...
nnoremap ; :
vnoremap ; :

" Mover entre linhas visuais...
map j gj
map k gk
map <down> gj
map <up> gk

" Navegar opções com as setas ou navegar entre linhas visuais...
imap <expr> <up> pumvisible() ? '<c-p>' : '<c-o>gk'
imap <expr> <down> pumvisible() ? '<c-n>' : '<c-o>gj'

" Aceitar opção do icomplete com 'Enter' ou seta para a direita...
inoremap <expr> <right> pumvisible() ? '<c-y>' : '<right>'
inoremap <expr> <cr> pumvisible() ? '<c-y>' : '<cr>'

" Cancelar icomplete com a seta para a esquerda...
inoremap <expr> <left> pumvisible() ? '<c-e>' : '<left>'

" Alternar correção ortográfica...
map <f2> :set spell!<cr>

" Alternar quebra de linha...
map <f3> :set wrap!<cr>

" Abrir o terminal...
map <f4> :term<cr>

" Abrir o terminal para executar o script em edição...
map <f5> :term %:p<cr>

" Alternar caracteres invisíveis...
map <f6> :set list!<cr>

" Exibe estatísticas do arquivo...
map <f7> g<c-g>
imap <f7> <c-o>g<c-g>

" Abre debugger no terminal...
map <f8> :term gdb<cr>

" Executar 'make' (requer makefile no diretório)...
map <f9> :term make<cr>

" -----------------------------------------------------------------------------
" Mapeamentos com a tecla 'leader'
" -----------------------------------------------------------------------------

let mapleader = ' '

" Destaque de busca...
map <silent> <leader>hh :set hls!<cr>
map <silent> <leader>hc :let @/ = ""<cr>

" Copiar e recortar seleção para a área de transferência do Xorg...
vmap <silent> <leader>yy "+y
vmap <silent> <leader>dd "+c

" Salvar apenas se houver mudanças...
map <leader>w :update<cr>

" Colar última cópia em vez do último recorte...
map <leader>p "0p
map <leader>P "0P

" Novo buffer vazio...
map <leader>bn :enew<cr>

" Navegar entre buffers...
map <leader>, :bp<cr>
map <leader>. :bn<cr>

" Destaque de coluna...
map <silent> <leader>cc :execute "set cc=" . (&colorcolumn == "" ? "80" : "")<cr>

" Alterna dobras...
map <leader>ff za
map <leader>fg zi
map <leader>fe zf}

" Abas...
map <leader>ta :tab ball<cr>
map <leader>to :tabonly<cr>

" Explorador de arquivos...
map <leader>e :30Lex<cr>

"
