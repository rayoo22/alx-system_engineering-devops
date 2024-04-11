# using puppet to create a manifest that kills
# a process called killmenow

exec { 'killmenow':
  command => 'pkill killmenow',
  path    =>'/usr/bin:/bin',
}
