name 'pxe-server'
run_list 'role[base-server]', 'recipe[tftp]', 'recipe[pxe_dust]'
