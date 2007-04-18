package Catalyst::Model::WebService::Lucene;

use base qw( WebService::Lucene Catalyst::Model );

use strict;

our $VERSION = '0.02';

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

=head2 COMPONENT( )

passes your config options to L<WebService::Lucene>'s C<new> method.

=cut

sub COMPONENT {
    my( $class, $c, $config ) = @_;
    my $self = $class->new( $config->{ server } );

    $self->config(
        $self->merge_config_hashes( $self->config, $config )
    );

    return $self;
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
