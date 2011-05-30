package Qt::Sql::QSqlQueryModel;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlQueryModel
# file     : QtSql/qsqlquerymodel.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_02';
our $ISA     = qw/Qt::Core::QAbstractTableModel/;


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlQueryModel

=head1 PUBLIC METHODS

=over

=item   QSqlQueryModel()

=item   QSqlQueryModel( = 0)

=item   ~QSqlQueryModel()

=item  bool canFetchMore()

=item  bool canFetchMore( = QModelIndex())

=item  void clear()

=item  int columnCount()

=item  int columnCount( = QModelIndex())

=item  QVariant data(, )

=item  QVariant data(,  = Qt::DisplayRole)

=item  void fetchMore()

=item  void fetchMore( = QModelIndex())

=item  QVariant headerData(, , )

=item  QVariant headerData(, ,  = Qt::DisplayRole)

=item  bool insertColumns(, , )

=item  bool insertColumns(, ,  = QModelIndex())

=item  QSqlError lastError()

=item  QSqlQuery query()

=item  QSqlRecord record()

=item  QSqlRecord record()

=item  bool removeColumns(, , )

=item  bool removeColumns(, ,  = QModelIndex())

=item  int rowCount()

=item  int rowCount( = QModelIndex())

=item  bool setHeaderData(, , , )

=item  bool setHeaderData(, , ,  = Qt::EditRole)

=item  void setQuery()

=item  void setQuery(, )

=item  void setQuery(,  = QSqlDatabase())


=back

=head1 ENUM VALUES

=over


=back

=head2 EXPORT

None by default.

=head1 AUTHOR

Dongxu Ma E<lt>dongxu@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2011 - 2011 by Dongxu Ma

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

See L<http://dev.perl.org/licenses/artistic.html>

=cut
