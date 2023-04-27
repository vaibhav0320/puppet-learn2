class test{

  file { 'test.txt':
    path => '/etc/test.txt',
    ensure => file,
    content => "This file if from test module..after update"
    
  }

  user { 'dark':
  ensure     => present,
  uid        => '1111',
  gid        => '1000',
  shell      => '/bin/bash',
  home       => '/home/dark'
}

}
