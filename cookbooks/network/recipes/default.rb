service "networking" do
  supports :restart => true
  action :nothing
end

network = data_bag_item('network', node['hostname'])

if node['ipaddress'] != network['address']
  template "/etc/network/interfaces" do
    source "interfaces.erb"
    variables(
      :address => network['address'],
      :gateway => network['gateway']
    )
    notifies :restart, "service[networking]"	
  end

end
