" Show line numbers
set number

" Auto insert Doxygen header for new .c files
autocmd BufNewFile *.c call SetDoxygenHeader()
function! SetDoxygenHeader()
    call setline(1, '/**')
    call append(1, ' * @file ' . expand('%:t'))
    call append(2, ' * @brief')
    call append(3, ' * @author')
    call append(4, ' * @date ' . strftime('%Y-%m-%d'))
    call append(5, ' * @version')
    call append(6, ' * @copyright')
    call append(7, ' *')
    call append(8, ' * @details')
    call append(9, ' *')
    call append(10, ' * @note')
    call append(11, ' *')
    call append(12, ' */')
    call append(13, '')
endfunction
