class php5 {
  include php5::install

  # upgrade pear
  exec {"pear upgrade":
    command => "/usr/bin/pear upgrade",
    require => Package['php-pear'],
  }

  # set channels to auto discover
  exec { "pear auto_discover" :
      command => "/usr/bin/pear config-set auto_discover 1",
      require => [Package['php-pear']]
  }

  # update channels
  exec { "pear update-channels" :
      command => "/usr/bin/pear update-channels",
      require => [Package['php-pear']]
  }
}
