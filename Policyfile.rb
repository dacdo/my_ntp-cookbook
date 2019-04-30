name 'my_ntp'
run_list 'recipe[my_ntp::default]'
cookbook 'my_ntp', path: '.'
default_source :supermarket
