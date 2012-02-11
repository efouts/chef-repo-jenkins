name 'base-server'
description 'Base role for all servers'
run_list 'recipe[apt]', 'recipe[openssh]', 'recipe[users]'
