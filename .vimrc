""" console
map <leader>c :exe '!clear && bin/console'<CR>
""" rubocop current file
map <leader>r :exe '!clear && rubocop -a '.@%<CR>
""" rubocop all files
map <leader>R :exe '!clear && rubocop -a'<CR>
""" test one file
map <leader>t :exe '!clear && bin./rspec -- --filename='.@%<CR>
""" test all files
map <leader>T :exe '!clear && bin/rspec'<CR>

