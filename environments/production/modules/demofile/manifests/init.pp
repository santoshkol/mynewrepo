class demofile{
file { '/root/demofiles.txt':
ensure => present,
content => "${osfamily}",
}
}
