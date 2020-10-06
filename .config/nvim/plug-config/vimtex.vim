let g:tex_flavor  = 'latex'
let g:tex_conceal = ''
let g:vimtex_fold_manual = 1
let g:vimtex_latexmk_continuous = 1
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_method = 'skim'
" let g:Tex_DefaultTargetFormat="pdf"
" let g:Tex_CompileRule_pdf='xelatex --output-directory=temp -interaction=nonstopmode $*'
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : 'temp',
    \}
" let g:Tex_ViewRule_pdf='cd temp'
" let g:vimtex_view_general_viewer
        " \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
" let g:vimtex_view_general_options = '-r @line @pdf @tex'

" This adds a callback hook that updates Skim after compilation
" let g:vimtex_compiler_callback_hooks = ['UpdateSkim']

" function! UpdateSkim(status)
    " if !a:status | return | endif

    " let l:out = b:vimtex.out()
    " let l:tex = expand('%:p')
    " let l:cmd = [g:vimtex_view_general_viewer, '-r']

    " if !empty(system('pgrep Skim'))
        " call extend(l:cmd, ['-g'])
    " endif

    " if has('nvim')
        " call jobstart(l:cmd + [line('.'), l:out, l:tex])
    " elseif has('job')
        " call job_start(l:cmd + [line('.'), l:out, l:tex])
    " else
        " call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
    " endif
" endfunction
