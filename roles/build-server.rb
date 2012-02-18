name 'build-server'
description 'Jenkins build server'
run_list 'role[base-server]', 'recipe[network]', 'recipe[java]', 'recipe[jenkins]'
