class php5::install {
  package { [
      'php5',
      'php-apc',
      'php5-curl',
      'php5-dev',
      'php5-fpm',
      'php5-gd',
      'php5-json',
      'php5-mysql',
      'php-pear',
      'php5-xdebug'
    ]:
    ensure => present
  }
}