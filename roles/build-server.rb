name 'build-server'
description 'Jenkins build server'
run_list 'role[base-server]', 'recipe[git]', 'recipe[runit]', 'recipe[java]', 'recipe[jenkins]'
