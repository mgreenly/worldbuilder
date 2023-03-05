""" console
map <leader>c :exe '!clear && echo "bin/console" && echo && bin/console'<CR>
""" rubocop current file
map <leader>r :exe '!clear && echo "bin/rubcop -a '.@%'" && echo && rubocop -a '.@%<CR>
""" rubocop all files
map <leader>R :exe '!clear && echo "bin/rubocop lib/wb" && echo && rubocop lib/wb'<CR>
""" test one file
map <leader>t :exe '!clear && echo "bin/rspec '.@%'" && bin/rspec '.@%<CR>
""" test all files
map <leader>T :exe '!clear && echo "bin/rspec ./spec" && bin/rspec ./spec'<CR>

