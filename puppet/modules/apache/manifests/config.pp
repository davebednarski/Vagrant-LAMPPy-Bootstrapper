class apache::config {

  file { '/etc/apache2/mods-enabled/rewrite.load':
    ensure  => link,
    target  => '/etc/apache2/mods-available/rewrite.load',
    require => Package['apache2'],
    notify  => Service['apache2'],
  }

  file { '/var/www/html/phpinfo.php':
    ensure  => file,
    owner   => 'www-data',
    group   => 'www-data',
    mode    => '0644',
    source  => 'puppet:///modules/apache/var/www/html/phpinfo.php',
    require => Package['apache2'],
    notify  => Service['apache2']
  }

}