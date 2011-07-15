use strict;
use warnings;
use Test::More;

use Scalar::Util::reftype::Inline "reftype";

use Scalar::Util ();

is(reftype([]), 'ARRAY');
my $r = bless [], "Affe";
is(ref($r), 'Affe');
is(reftype($r), 'ARRAY');

my $val = bless [], "affe";
my $ret1 =      ( reftype($val) eq "ARRAY" )   ? 1 : 0;
my $ret2 = grep { reftype($val) eq "ARRAY" } 5 ? 1 : 0;
is ($ret2, $ret1);

done_testing;
