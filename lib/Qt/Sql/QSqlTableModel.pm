package Qt::Sql::QSqlTableModel;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlTableModel
# file     : QtSql/qsqltablemodel.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_02';
our $ISA     = qw/Qt::Sql::QSqlQueryModel/;


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlTableModel

=head1 PUBLIC METHODS

=over

=item   QSqlTableModel(, )

=item   QSqlTableModel(,  = QSqlDatabase())

=item   QSqlTableModel( = 0,  = QSqlDatabase())

=item   ~QSqlTableModel()

=item  void clear()

=item  QVariant data(, )

=item  QVariant data(,  = Qt::DisplayRole)

=item  QSqlDatabase database()

=item  QSqlTableModel::EditStrategy editStrategy()

=item  int fieldIndex()

=item  QString filter()

=item  QFlags<Qt::ItemFlag> flags()

=item  QVariant headerData(, , )

=item  QVariant headerData(, ,  = Qt::DisplayRole)

=item  bool insertRecord(, )

=item  bool insertRows(, , )

=item  bool insertRows(, ,  = QModelIndex())

=item  bool isDirty()

=item  QSqlIndex primaryKey()

=item  bool removeColumns(, , )

=item  bool removeColumns(, ,  = QModelIndex())

=item  bool removeRows(, , )

=item  bool removeRows(, ,  = QModelIndex())

=item  void revert()

=item  void revertAll()

=item  void revertRow()

=item  int rowCount()

=item  int rowCount( = QModelIndex())

=item  bool select()

=item  bool setData(, , )

=item  bool setData(, ,  = Qt::EditRole)

=item  void setEditStrategy()

=item  void setFilter()

=item  bool setRecord(, )

=item  void setSort(, )

=item  void setTable()

=item  void sort(, )

=item  bool submit()

=item  bool submitAll()

=item  QString tableName()


=back

=head1 ENUM VALUES

=over

=item OnFieldChange

=item OnRowChange

=item OnManualSubmit


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
