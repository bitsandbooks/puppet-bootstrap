# == Class: bootstrap
#
# Bootstrap gets Ubuntu servers up, running and ready for other manifests.
#
# === Parameters
#
# This module has no parameters.
#
# === Variables
#
# This module has no variables.
#
# === Examples
#
# node { 'foo.bar':
# 	include robd-bootstrap
# }
#
# === Authors
#
# Rob Dumas <robdumas@gmail.com>
#
# === Copyright
#
# Copyright 2015 Zedworks Inc., unless otherwise noted.
#
class bootstrap {
	# Base package install list.
	$bootstrappackages = [
		'aptitude',
		'build-essential',
		'dkms',
		'fail2ban',
		'gdebi-core',
		'ntp',
		'software-properties-common',
		'vim',
	]

	# Silence the annoyance about the 'puppet' group and grant members of
	# said group access to /etc/puppet.
	group { 'puppet': ensure => 'present', }
	file { '/etc/puppet':
		ensure  => 'directory',
		group   => 'puppet',
		recurse => 'true',
		require => Group['puppet'],
	}

	# Sync local apt cache.
	exec { 'AptCacheSync': command => '/usr/bin/apt-get update -qq', }

	# Install packages
	package { $bootstrappackages:
		ensure  => 'latest',
		require => Exec['AptCacheSync']
	}
}
