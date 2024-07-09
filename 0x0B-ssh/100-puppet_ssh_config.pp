#!/usr/bin/env bash
# using puppet to make changes to our configuration file

#!/usr/bin/env bash
# Automating my Tasks using Puppet

file { '/etc/ssh/ssh_config':
	ensure  => present,

content => "
	# SSH client configuration
	Host *
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
}
