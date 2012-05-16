use strict;
use warnings;

package Scalar::Util::reftype::Inline;
# ABSTRACT: A faster reftype via inline - EXPERIMENTAL

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

=head1 ABOUT

A highly experimental inlined C<reftype> (implemented by rafl++).
Provided in the hope to be faster in special cases where reftype is a
bottle-neck, like it is, for instance, sometimes in
L<Data::DPath|Data::DPath>.

It seems to not help as much as anticipated, but is provided as
reference. (In the early days, when it still memleaked, it B<was>
faster, too bad we have to collect garbage...)

=cut
