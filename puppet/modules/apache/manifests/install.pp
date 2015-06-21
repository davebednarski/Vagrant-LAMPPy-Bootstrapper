class apache::install {
  exec { "apt-update":
    command => "/usr/bin/apt-get update"
  }

  package { [
      'apache2',
      'libapache2-mod-php5'
    ]:
    ensure => present
  }
}