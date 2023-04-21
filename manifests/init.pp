node 'puppetmaster.vm.local'{

file { 'helo.txt':
  path => '/etc/helo.txt',
  ensure => file,
  content => "my os is $operatingsystem"
  
}
}
