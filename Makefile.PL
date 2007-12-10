use 5.008000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME          => 'TL1ng',
    VERSION_FROM  => 'lib/TL1ng.pm', # finds $VERSION in file.
    PREREQ_PM     => {
        Net::Telnet => '3.03', 
        Time::Local => '1.17',
    },
    ( $] >= 5.005  ## Add these new keywords supported since 5.005 
      ? (     
         ABSTRACT_FROM  => 'lib/TL1ng.pm', # retrieve abstract from module
         AUTHOR         => 'Steve Scaffidi <sscaffidi@cpan.net>'
        ) 
      : ()
    ),
);
