node default{

 

file { 'helo.txt':
  path => '/etc/helo.txt',
  ensure => file,
  content => "my os is $operatingsystem and $::whoisadmin"
  
} } 

node 'websrv.vm.local'{

  include test
}

node 'puppetdb.vm.local'{
  class {'puppetdb':
  }
}

node 'puppetserver.vm.local'{
  include puppetdb::master::config
}

