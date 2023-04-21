file { 'test.txt':
  path => '/etc/test.txt',
  ensure => file,
  content => "This is from test\nmy os is $operatingsystem"
  
}
