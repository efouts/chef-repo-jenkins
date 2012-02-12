name 'base-server'
description 'Base role for all servers'
run_list 'recipe[sudo]', 'recipe[users::sysadmins]', 'recipe[openssh]'
#run_list 'recipe[apt]', 'recipe[openssh]', 'recipe[users::sysadmins]'
