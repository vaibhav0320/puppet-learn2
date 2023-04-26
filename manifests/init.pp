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
    listen_address => '0.0.0.0',
    open_listen_port => true,
    disable_ssl => true,
  }
}

node 'puppetserver.vm.local'{
  class{' puppetdb::master::config':
     puppetdb_server => 'puppetdb.vm.local',
     puppetdb_port => 8080,
  }
}

