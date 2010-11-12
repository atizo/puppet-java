class java::sun {
  package{[
    'java-1.6.0-sun', 
    'java-1.6.0-sun-devel', 
    'java-1.6.0-sun-fonts',
  ]:
      ensure => present,
  }
  file{'/etc/profile.d/java.sh':
    source => [
      "puppet://$server/modules/site-java/profile.d/$fqdn/java.sh",
      "puppet://$server/modules/site-java/profile.d/java.sh",
      "puppet://$server/modules/java/profile.d/java.sh",
    ],
    owner => root, group => 0, mode => 0644;
  }
}
