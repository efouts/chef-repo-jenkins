name 'build-server'
description 'Jenkins build server'
run_list 'role[base-server]', 'recipe[network]', 'recipe[mercurial]', 'recipe[node]', 'recipe[runit]', 'recipe[java]', 'recipe[jenkins]'
