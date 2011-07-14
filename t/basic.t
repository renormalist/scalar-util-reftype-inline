use strict;
use warnings;
use Test::More;

use Scalar::Util::reftype::Inline;

use Scalar::Util ();

is(reftype([]), 'ARRAY');
my $r = bless [], "Affe";
is(ref($r), 'Affe');
is(reftype($r), 'ARRAY');

done_testing;
