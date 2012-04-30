package Qt::Sql::QSqlRelationalTableModel;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlRelationalTableModel
# file     : QtSql/qsqlrelationaltablemodel.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_04';
use base qw/Qt::Sql::QSqlTableModel/;
#our @ISA = qw/Qt::Sql::QSqlTableModel/;


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlRelationalTableModel

=head1 PUBLIC METHODS

=over

=item   QSqlRelationalTableModel(QObject * parent, QSqlDatabase db)

=item   QSqlRelationalTableModel(QObject * parent, QSqlDatabase db = QSqlDatabase())

=item   QSqlRelationalTableModel(QObject * parent = 0, QSqlDatabase db = QSqlDatabase())

=item   ~QSqlRelationalTableModel()

=item  void clear()

=item  QVariant data(const QModelIndex & item, int role)

=item  QVariant data(const QModelIndex & item, int role = Qt::DisplayRole)

=item  QSqlRelation relation(int column)

=item  QSqlTableModel * relationModel(int column)

=item  bool removeColumns(int column, int count, const QModelIndex & parent)

=item  bool removeColumns(int column, int count, const QModelIndex & parent = QModelIndex())

=item  void revertRow(int row)

=item  bool select()

=item  bool setData(const QModelIndex & item, const QVariant & value, int role)

=item  bool setData(const QModelIndex & item, const QVariant & value, int role = Qt::EditRole)

=item  void setRelation(int column, const QSqlRelation & relation)

=item  void setTable(const QString & tableName)


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
