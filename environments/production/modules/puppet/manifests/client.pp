#
#
#
#
define puppet::client ($puppetserver, $puppetversion){
    class { puppet::install::client: 
            puppetversion => $puppetversion,
    }
    include puppet::client::service
    class { puppet::client::config:
            puppetserver => $puppetserver,
    }
}
