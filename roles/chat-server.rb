name 'chat-server'
run_list 'role[base-server]', 'recipe[network]',  'recipe[node]'
