package Qt::Sql::QSqlIndex;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlIndex
# file     : QtSql/qsqlindex.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_04';
use base qw/Qt::Sql::QSqlRecord/;
#our @ISA = qw/Qt::Sql::QSqlRecord/;


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlIndex

=head1 PUBLIC METHODS

=over

=item   QSqlIndex(const QSqlIndex & other)

=item   QSqlIndex(const QString & cursorName, const QString & name)

=item   QSqlIndex(const QString & cursorName, const QString & name = QString())

=item   QSqlIndex(const QString & cursorName = QString(), const QString & name = QString())

=item   ~QSqlIndex()

=item  void append(const QSqlField & field)

=item  void append(const QSqlField & field, bool desc)

=item  QString cursorName()

=item  bool isDescending(int i)

=item  QString name()

=item  QSqlIndex & operator=(const QSqlIndex & other)

=item  void setCursorName(const QString & cursorName)

=item  void setDescending(int i, bool desc)

=item  void setName(const QString & name)


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
