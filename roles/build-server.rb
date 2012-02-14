name 'build-server'
description 'Jenkins build server'
run_list 'role[base-server]', 'recipe[mercurial]', 'recipe[runit]', 'recipe[java]', 'recipe[jenkins]'
