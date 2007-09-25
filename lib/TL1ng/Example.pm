package TL1ng::Example;

use strict;
use warnings;

our $VERSION = '0.01';

our @ISA = qw(TL1ng::Base);
use base 'TL1ng::Base';

# Example of a derived class.
sub rand_ctag { int(rand() * 1000) }

1;