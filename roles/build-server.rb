{
  "name": "build-server",
  "default_attributes": {
  },
  "json_class": "Chef::Role",
  "env_run_lists": {
  },
  "run_list": [
    "recipe[apt]",
    "recipe[git]",
    "recipe[runit]",
    "recipe[java]",
    "recipe[jenkins]"
  ],
  "description": "",
  "chef_type": "role",
  "override_attributes": {
  }
}
