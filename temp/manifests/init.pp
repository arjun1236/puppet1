class temp {
      file { '/etc/xyz':
           content => template('temp/xyz.erb')
           }
}
