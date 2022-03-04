name             'my_ntp'
maintainer       'Dac Do'
maintainer_email 'dacdo@dttsolutions-it.com'
license          'Apache-2.0'
description      'Installs/Configures ntp'
version          '0.1.2'

chef_version     '>= 12.19'
supports         'redhat'

depends 'ntp', '~> 3.0'
