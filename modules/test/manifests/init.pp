class test{

  file { 'test.txt':
    path => '/etc/test.txt',
    ensure => file,
    content => "This file if from test module"
    
  }

  user { 'dark':
  ensure     => present,
  uid        => '1111',
  gid        => '1111',
  shell      => '/bin/bash',
  home       => '/home/dark'
}

}
