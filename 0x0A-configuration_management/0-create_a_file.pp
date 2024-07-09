# creates a file in /tmp with certain requirements
file { '/tmp/school':
path    => '/tmp/school',
mode    => '0744',
owner   => 'www-data',
group   => 'www-data',
content => 'I love Puppet',
}
