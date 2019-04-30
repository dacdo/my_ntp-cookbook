#
# Cookbook Name:: my_ntp
# Recipe:: default
#

include_recipe 'ntp::default'

# access node attribute that is defined in ntp cookbook
log "maxpoll = #{node['ntp']['peer']['maxpoll']}" do
  level :info
end

log "minpoll = #{node['ntp']['peer']['minpoll']}" do
  level :info
end

service 'ntpd' do
  action [:enable, :start]
end

cookbook_file 'ntp.conf' do
  path '/etc/ntp.conf'
  mode 0444
  action :create
  notifies :restart, 'service[ntpd]', :immediately
end
