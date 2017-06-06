class motd {
    file {'/etc/motd':
          source => 'puppet:///modules/motd/motd',
         }
   # $name1 = $kernel 
   notify {"name of the game is ${::operatingsystem}": }
      package { 'curl':
                ensure => present,
              }
}
