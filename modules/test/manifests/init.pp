class test{

  file { 'test.txt':
    path => '/etc/test.txt',
    ensure => file,
    content => "This file if from test module"
    
  }

}
