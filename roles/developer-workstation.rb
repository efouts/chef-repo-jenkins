name 'developer-workstation'
description 'A workstation with tools for a developer'
run_list 'recipe[vim]', 'recipe[node]', 'recipe[mercurial]', 'recipe[git]'
