name 'build-server'
description 'Jenkins build server'
run_list 'recipe[apt]', 'recipe[git]', 'recipe[runit]', 'recipe[java]', 'recipe[jenkins]'
