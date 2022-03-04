#
# Cookbook Name:: my_ntp
# Recipe:: default
#

require 'pry'

include_recipe 'ntp::default'

# access node attribute that is defined in ntp cookbook
log "maxpoll = #{node['ntp']['peer']['maxpoll']}" do
  level :info
end

log "minpoll = #{node['ntp']['peer']['minpoll']}" do
  level :info
end

log "before binding = #{node['my_ntp']['pry']}" do
  level :info
end

# service ntpd testing is not done with dokken 

service 'ntp' do
  action [:enable, :start]
end

node.default['my_ntp']['pry'] = 'after breakpoint'
# binding.pry

# when stops, it shows pry(#<Chef::recipe>)
#   enter p node.keys
#   p node['policy_name']
#   p node['policy_group']
#   p node['cookbooks']
#   p node['my_ntp']['pry']
#   next
#   continue

log "after binding = #{node['my_ntp']['pry']}" do
  level :info
end

cookbook_file 'ntp.conf' do
  path '/tmp/ntp.conf'
  mode '0444'
  action :create
  notifies :restart, 'service[ntp]', :immediately
end

file '/tmp/abc.txt' do
  content 'Welcome'
  mode '0755'
  owner 'root'
  group 'root'
end
