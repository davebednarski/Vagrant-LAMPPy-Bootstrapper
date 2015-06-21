class mysql::install {
  package { [
      'mysql-client',
      'mysql-server',
      'libmysqlclient-dev'
    ]:
    ensure => installed
  }
}