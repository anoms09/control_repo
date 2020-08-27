class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDpeZDwtt4Mh2mKAXF/Q5hIA4k/8IkkbjM4GEzgmSfkxm8rZkML7/ERk3QaQ67U3ik1nKBGCjXg2OqCrI2UhR8E8hBcSTgU5neUl1k59Q+ptGjSZwcJt4KKl1TgtYBRlgt35Zq67+Nz2Nu3Hi2n4HAeq590fc4r4GP8Xx3vyEVDSLH84z5s4ODO5B6uSz18JyxmYvzvfvjKugLh4h3ICqsYZJcX3htZxcEy9Z8Bv7jdf19kp1RCpMcJssRItcBcPWXXMa+ztvs/kr1G+W5FOlnrBsBhxjB09bmnn1wvJErI8qN9kgUP0M+6z7038Io9qWlwMfpjty58wWqohwv6Kwg9',
	}  
}
