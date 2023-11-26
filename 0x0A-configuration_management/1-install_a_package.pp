# install_flask.pp

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command     => '/usr/bin/pip3 install Flask==2.1.0',
  path        => '/usr/bin',
  refreshonly => true,
  creates     => '/usr/local/lib/python3.8/dist-packages/Flask-2.1.0.dist-info',
}

file { '/usr/local/bin/flask':
  ensure  => link,
  target  => '/usr/local/bin/flask',
  require => Exec['install_flask'],
}
