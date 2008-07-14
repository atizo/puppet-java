#
# java module
#
# Copyright 2008, Puzzle ITC
# Marcel Härry haerry+puppet(at)puzzle.ch
# Simon Josi josi+puppet(at)puzzle.ch
#
# This program is free software; you can redistribute 
# it and/or modify it under the terms of the GNU 
# General Public License version 3 as published by 
# the Free Software Foundation.
#

# modules_dir { \"java\": }

class java {
    include java::base
}

class java::base {
    package{ ['java-1.6.0-sun', 
        'java-1.6.0-sun-devel', 
        'java-1.6.0-sun-fonts' ]:
        ensure => present,
    }

    file{'/etc/profile.d/java.sh':
        source => [ "puppet://$server/files/java/profile.d/${fqdn}/java.sh",
                    "puppet://$server/files/java/profile.d/java.sh",
                    "puppet://$server/java/profile.d/java.sh" ],
        owner => root, group => 0, mode => 0644;
    }
}
