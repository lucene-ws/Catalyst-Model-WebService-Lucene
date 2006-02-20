package Catalyst::Model::WebService::Lucene;

use base qw( Catalyst::Model WebService::Lucene );

use strict;

our $VERSION = '0.01';

=head1 NAME

Catalyst::Model::WebService::Lucene - Use WebService::Lucene in your Catalyst
application

=head1 SYNOPSIS

    package MyApp::Model::Lucene;
    
    use base qw( Catalyst::Model::WebService::Lucene );
    
    __PACKAGE__->config(
        server => 'http://localhost:8080/lucene/'
    );

=head1 DESCRIPTION

This module helps you use remote indexes via WebService::Lucene in your
Catalyst application.

=head1 METHODS

=head2 new( )

Creates a new instance of a WebService::Lucene object.

=cut

sub new {
	my ( $class, $c, $options ) = @_;

	return $class->WebService::Lucene::new( $class->config->{ server } );

}

=head1 SEE ALSO

=over 4

=item * L<Catalyst>

=item * L<WebService::Lucene>

=back

=head1 AUTHORS

=over 4

=item * Brian Cassidy E<lt>brian.cassidy@nald.caE<gt>

=item * Adam Paynter E<lt>adam.paynter@nald.caE<gt>

=back

=head1 COPYRIGHT AND LICENSE

Copyright 2006 National Adult Literacy Database

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut

1;