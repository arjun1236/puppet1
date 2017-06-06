class apache inherits motd {
     package { 'httpd':
            ensure => present,
            before => File['/var/www/html/index.html'],
             }
     file { '/var/www/html/index.html':
            source => 'puppet:///modules/apache/index.html',
            notify => Service['httpd'],
          }
     service { 'httpd':
               ensure => running,
               require => Package['curl'],
             }
     $game = $name1
     notify { "game is ${game}": }

}
