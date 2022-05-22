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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDLKk8gId/Njt0GRj0L7b4dy+87klXKCuaSTD8WnkH7KGAHOEER3fjSB94WUSqYIxbU47iHStNaRdRFYN3qWiSiD0VAp7KnQSdGAiJR0c+TWMULjmFqdMD3dnilyDVRA8bUbwjm5q8r/Cs75hgp85tXr6MbT76FgJq+Xdi01+eOaML1RDT5gT7LOQh1sFzoOc3d7hLETtyK+SI/MaJSJIby+45LnMVYeDPDNvc/bUwhgQ1R1tQG+YdilqXULT0AA6UKdKAfN8b62o9Hp58unawAb9X8ZWlI153Byz/iTN8+G0pODA5R7eV0As+TqaqgxabHrVEzSs/HwX/3tAelOTPH',
  }  
}
