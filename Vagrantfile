Vagrant.configure('2') do |config|
  config.vm.box = 'bento/centos-7'

  config.vm.synced_folder '/Users/dacdo/shared', '/shared'

  config.vm.provision 'shell', inline: <<-SHELL
    sudo rpm -Uvh /shared/chef-14.6.47-1.el7.x86_64.rpm
  SHELL

  config.vm.define 'n1' do |n1|
    n1.vm.hostname = 'n1'
    n1.vm.network 'private_network', ip: '10.42.144.89'
  end
end
