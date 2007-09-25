use 5.008000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'TL1ng',
    VERSION_FROM      => 'lib/TL1ng.pm', # finds $VERSION
    PREREQ_PM         => {Net::Telnet, Time::Local}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/TL1ng.pm', # retrieve abstract from module
       AUTHOR         => 'Steve Scaffidi <sscaffidi@cpan.net>') : ()),
);
