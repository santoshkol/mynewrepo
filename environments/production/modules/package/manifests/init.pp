class package{

service { 'nginx':
 ensure => running,
}
package{ 'nginx':
ensure => installed,
}
}
