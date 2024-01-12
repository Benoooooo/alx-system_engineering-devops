#!/usr/bin/env bash
# configure using puppet

file { '/home/kelechi/.ssh/config':
ensure  => present,
mode    => '0600',
owner   => 'kelechi',
}

# Define the template for SSH client configuration
file { '/etc/puppetlabs/code/environments/production/modules/your_module/templates/ssh_config.erb':
ensure  => present,
mode    => '0644',
content => "# SSH client configuration\n\nHost 54.145.157.0\n  IdentityFile ~/.ssh/school\n  PasswordAuthentication no\n",
}
