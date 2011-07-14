use strict;
use warnings;

package Scalar::Util::reftype::Inline;

use Devel::CallChecker;
use XSLoader;

XSLoader::load(__PACKAGE__);

sub reftype { die 42 }

use Sub::Exporter -setup => {
	exports => [qw(reftype)],
};

sub unimport {
    $^H{ __PACKAGE__ . '/reftype' } = 0;
}

1;
