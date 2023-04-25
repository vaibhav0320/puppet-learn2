node default{

file { 'helo.txt':
  path => '/etc/helo.txt',
  ensure => file,
  content => "my os is $operatingsystem"
  
} } 

node 'websrv'{

  include test
}

