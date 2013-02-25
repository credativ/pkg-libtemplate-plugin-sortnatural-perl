package Template::Plugin::SortNatural;

use warnings;
use strict;
use base qw( Template::Plugin::VMethods );
use Carp;
use Sort::Naturally; 

our $VERSION = '0.001';

our @LIST_OPS =  qw( sortn );

=head1 NAME

Template::Plugin::SortNatural - Sort lists natural with Sort::Naturally

=head1 SYNOPSIS

 [% USE SortNatural;
    foo.nsort;
 %]
  

=head1 DESCRIPTION

sort lexically, but sort numeral parts numerically

=cut

=head2 sortn( )

Returns a new sorted arrayref.

=cut

sub sortn {
    my $list  = shift;
    if ( ref $list eq 'ARRAY' ) {
        return nsort(@{$list});
    } else {
        croak "sort_by only works with ARRAY references";
    }

}

1;

__END__

=head1 AUTHOR

Alexander Wirt, C<< <formorer@formorer.de> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-template-plugin-handy@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.  I will be notified, and then you'll automatically be
notified of progress on your bug as I make changes.

=head1 ACKNOWLEDGEMENTS

The Minnesota Supercomputing Institute C<< http://www.msi.umn.edu/ >>
sponsored the development of this software.

=head1 COPYRIGHT & LICENSE

Copyright 2008 by the Regents of the University of Minnesota.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

