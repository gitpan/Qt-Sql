package Qt::Sql::QSqlTableModel;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlTableModel
# file     : QtSql/qsqltablemodel.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_04';
use base qw/Qt::Sql::QSqlQueryModel/;
#our @ISA = qw/Qt::Sql::QSqlQueryModel/;


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlTableModel

=head1 PUBLIC METHODS

=over

=item   QSqlTableModel(QObject * parent, QSqlDatabase db)

=item   QSqlTableModel(QObject * parent, QSqlDatabase db = QSqlDatabase())

=item   QSqlTableModel(QObject * parent = 0, QSqlDatabase db = QSqlDatabase())

=item   ~QSqlTableModel()

=item  void clear()

=item  QVariant data(const QModelIndex & idx, int role)

=item  QVariant data(const QModelIndex & idx, int role = Qt::DisplayRole)

=item  QSqlDatabase database()

=item  QSqlTableModel::EditStrategy editStrategy()

=item  int fieldIndex(const QString & fieldName)

=item  QString filter()

=item  QFlags<Qt::ItemFlag> flags(const QModelIndex & index)

=item  QVariant headerData(int section, Qt::Orientation orientation, int role)

=item  QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole)

=item  bool insertRecord(int row, const QSqlRecord & record)

=item  bool insertRows(int row, int count, const QModelIndex & parent)

=item  bool insertRows(int row, int count, const QModelIndex & parent = QModelIndex())

=item  bool isDirty(const QModelIndex & index)

=item  QSqlIndex primaryKey()

=item  bool removeColumns(int column, int count, const QModelIndex & parent)

=item  bool removeColumns(int column, int count, const QModelIndex & parent = QModelIndex())

=item  bool removeRows(int row, int count, const QModelIndex & parent)

=item  bool removeRows(int row, int count, const QModelIndex & parent = QModelIndex())

=item  void revert()

=item  void revertAll()

=item  void revertRow(int row)

=item  int rowCount(const QModelIndex & parent)

=item  int rowCount(const QModelIndex & parent = QModelIndex())

=item  bool select()

=item  bool setData(const QModelIndex & index, const QVariant & value, int role)

=item  bool setData(const QModelIndex & index, const QVariant & value, int role = Qt::EditRole)

=item  void setEditStrategy(QSqlTableModel::EditStrategy strategy)

=item  void setFilter(const QString & filter)

=item  bool setRecord(int row, const QSqlRecord & record)

=item  void setSort(int column, Qt::SortOrder order)

=item  void setTable(const QString & tableName)

=item  void sort(int column, Qt::SortOrder order)

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

Copyright (C) 2011 - 2012 by Dongxu Ma

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

See L<http://dev.perl.org/licenses/artistic.html>

=cut
