control 'examples 1.0' do
  impact 1.0
  title 'Verify ntp service'
  desc 'ntp service verification'

  describe package('ntp') do
    it { should be_installed }
  end
  describe service('ntp') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end

control 'files 1.0' do
  impact 1.0
  title 'Verify files'
  desc 'files verification'

  describe file('/etc/motd') do
    its('content') { should match(/Good/) }
  end
  describe file('/tmp/abc.txt') do
    it { should exist }
    its('content') { should match(/Welcome/) }
  end
end
