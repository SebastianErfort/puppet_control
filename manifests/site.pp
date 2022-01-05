node puppet.local {
  include role::master
  file {'/etc/secred_password.txt':
    ensure => file,
    content => lookup('secret_password'),
  }
}
