package TL1ng;

use 5.008000;

use strict;
use warnings;
use diagnostics;

use Carp;


our $VERSION = '0.05';


sub new {
    my ($class, $params) = @_;
	
	croak "Parameter list must be an anonymous hash!\n" if $params && ref $params ne "HASH";
	$params = {} if ! $params;
	
	
	# Since this class is just a factory, determine the conrete TL1ng class to 
	# instantiate... Use TL1ng::Base as a default is none is provided.
	my $inst_class = defined $params->{Type} 
		? "${class}::" . $params->{Type} : "${class}::Base";
	
	
	# Clean up parameters we've used here - anything left over will 
	# be passed to the object we're instantiating.
	$params->{Type} and delete $params->{Type};
	
	
	# Instantiate the apropriate TL1 object
	eval "require $inst_class" || die "Couldn't load $inst_class!";
	my $tl1_obj = $inst_class->new($params)
		|| croak "Couldn't instantiate $inst_class!\n";

    return $tl1_obj;
}


1;
__END__

=head1 NAME

TL1ng - A simple, flexible, OO way to work with TL1.

=head1 SYNOPSIS

  # You want a basic TL1 object that communicates via Telnet?
  use TL1ng;
  my $tl1_obj = TL1ng->new({
  	Source => 'Telnet'
  	Type => 'Base',
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
