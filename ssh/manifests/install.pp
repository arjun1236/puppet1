class ssh::install {
      #   if $::osfamily == 'RedHat' {
      #          $pack = 'openssh'}
      #   else {
      #         $pack = 'ssh'
      #        }
         
      #  case $::osfamily {
      #          'RedHat': { $pack = 'openssh'} 
      #          'Debian' : { $pack = 'ssh' }
      #           default : { warning('os not supprte') }                
      #   }

           $pack = $::osfamily? {
            'RedHat' => 'openssh',
            'Debian' => 'ssh',
            }
         package {'opens':
                name => $pack,
                ensure => present,
                 } 
}
