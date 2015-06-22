class python {

    package {
      [ "python3",
        "python3-setuptools",
        "python3-dev",
        "python3-pip",
#        "python-matplotlib",
#        "python-imaging",
#        "python-numpy",
#        "python-scipy",
#        "python-software-properties",
#        "idle",
#        "python-qt4",
#        "python-wxgtk2.8"
      ]:
        ensure => ["installed"],
        require => Exec['apt-update']
    }

    exec {
      "virtualenv":
      command => "/usr/bin/sudo pip3 install virtualenv",
      require => Package["python3-dev", "python3-pip"]
    }

}

class web {

#    package {
#      [ "python-twisted" ]:
#        ensure => ["installed"],
#        require => Exec['apt-update']
#    }
#
#    exec {
#      "bottle":
#      command => "/usr/bin/sudo pip install bottle",
#      require => Package["python-dev", "python-pip"]
#    }
#
#    exec {
#      "sqlalchemy":
#      command => "/usr/bin/sudo pip install sqlalchemy",
#      require => Package["python-pip"],
#    }
#
#    exec {
#      "django":
#      command => "/usr/bin/sudo pip install django",
#      require => Package["python-pip"],
#    }
#
#    exec {
#      "beautifulsoup4":
#      command => "/usr/bin/sudo pip install beautifulsoup4",
#      require => Package["python-pip"]
#    }
#
#    exec {
#      "mechanize":
#      command => "/usr/bin/sudo pip install mechanize",
#      require => Package["python-pip"]
#    }
#
#    exec {
#      "scrapelib":
#      command => "/usr/bin/sudo pip install scrapelib",
#      require => Package["python-pip"]
#    }
#
#    exec {
#      "Pyes":
#      command => "/usr/bin/sudo pip install Pyes",
#      require => Package["python-pip"]
#    }

}