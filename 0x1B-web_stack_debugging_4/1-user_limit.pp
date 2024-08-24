# Enable the user hoberton to login and open files without error
exec { 'increase-hard-file-limit-for-horberton-user':
	command => "sed -i 's/^holberton hard/s/4/50000/' /etc/security/limits.conf",
	path    => '/usr/local/bin/:/bin/'
}
exec { 'increase-hard-file-limit-for-horberton-user':
	command => "sed -i 's/^holberton soft/s/5/50000/' /etc/security/limits.conf",
	path    => '/usr/local/bin/:/bin/'
}
