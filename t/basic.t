use strict;
use warnings;
use Test::More;

use Scalar::Util::reftype::Inline "reftype";

use Scalar::Util ();

is(reftype([]), 'ARRAY', "reftype ARRAY");
is(reftype(bless []), 'ARRAY', "reftype blessed ARRAY");

is(reftype({}), 'HASH', "reftype HASH");
is(reftype(bless {}), 'HASH', "reftype blessed HASH");

my $val = bless [], "affe";
my $ret1 =      ( reftype($val) eq "ARRAY" )   ? 1 : 0;
my $ret2 = grep { reftype($val) eq "ARRAY" } 5 ? 1 : 0;
is ($ret2, $ret1, "reftype inside grep (regression test)");

done_testing;
