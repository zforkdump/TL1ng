package TL1ng;

use 5.008000;
use strict;
use warnings;

our $VERSION = '0.01';





1;
__END__

=head1 NAME

TL1ng - A simple, flexible, OO way to work with TL1.

=head1 SYNOPSIS

  use TL1ng;
  my $tl1_obj = new TL1ng({
  	Source => 'Telnet'
  	Type => 'Standard',
  });
  
  

=head1 DESCRIPTION

The module TL1ng is just a factory for getting instances of TL1ng::Base 
and it's sub-classes. The best way to learn about how this all works right now is
to read the perldoc for TL1ng::Base, then read the perldoc for any specific
sub-class(es) you may be using.

=head2 EXPORT

None by default.

=head1 SEE ALSO

Net::TL1
Net::Telnet


=head1 AUTHOR

Steve Scaffidi, E<lt>sscaffidi@cpan.netE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2007 by Steve Scaffidi

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.


=cut
