#class demofile{
#$variable1 = ['/root/demofiles1.txt', '/root/demofile22']
#file { $variable1:
#ensure => present,
#content => " am present in file \n",
#}

#}

class demofile {
 $newvar = $fqdn ? { 'puppet' => 'puppetmaster', 'node1' => 'client1', default => 'unknown', } 
		if $fqdn == 'puppet' {

 file { '/root/logic.txt':
     ensure => present,
content => " I am present in file '$newvar' \n",
}
 }

elsif

$fqdn == 'node1'

{ 
file { '/root/logic.txt':
     ensure => present,
}
 }

else { 

notify { 'n1':

message => " none of host present",
}
 }
   }
