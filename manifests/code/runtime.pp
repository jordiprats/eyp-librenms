class librenms::code::runtime inherits librenms {

  class { '::php':
    use_php_package_prefix_ius => $librenms::php_package_ius,
  }

  php::module { 'php-gd':
    tag => 'librenms'
  }

  # php::module { 'php-pear-MDB2-Driver-mysqli':
  #   tag => 'librenms'
  # }

  php::module { 'php-mcrypt':
    tag => 'librenms'
  }

  php::module { 'php-snmp':
    tag => 'librenms'
  }

  if($librenms::use_memcached)
  {
    php::module { $librenms::params::php_memcached_extesion:
      tag => 'librenms'
    }
  }

}
