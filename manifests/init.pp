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
  class{' puppetdb::master::config':
     puppetdb_server => 'puppetdb.vm.local',
     puppetdb_port => 8080,
  }
}

