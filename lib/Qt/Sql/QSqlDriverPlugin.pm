package Qt::Sql::QSqlDriverPlugin;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlDriverPlugin
# file     : QtSql/qsqldriverplugin.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_04';
use base qw/Qt::Sql::QSqlDriverFactoryInterface/;
#our @ISA = qw/Qt::Sql::QSqlDriverFactoryInterface/;


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlDriverPlugin

=head1 PUBLIC METHODS

=over

=item   QSqlDriverPlugin(QObject * parent)

=item   QSqlDriverPlugin(QObject * parent = 0)

=item   ~QSqlDriverPlugin()

=item  QSqlDriver * create(const QString & key)

=item  QStringList keys()


=back

=head1 ENUM VALUES

=over


=back

=head2 EXPORT

None by default.

=head1 AUTHOR

Dongxu Ma E<lt>dongxu@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2011 - 2012 by Dongxu Ma

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

See L<http://dev.perl.org/licenses/artistic.html>

=cut
