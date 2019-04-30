name             'my_ntp'
maintainer       'Dac Do'
maintainer_email 'you@example.com'
license          'all_rights'
description      'Installs/Configures my_ntp'
long_description 'Installs/Configures my_ntp'
version          '0.1.0'

chef_version     '>= 12.19' if respond_to?(:chef_version)
supports         'redhat'

depends 'ntp', '= 2.0.0'
