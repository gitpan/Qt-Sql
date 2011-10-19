package Qt::Sql::QSqlQueryModel;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlQueryModel
# file     : QtSql/qsqlquerymodel.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_03';


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlQueryModel

=head1 PUBLIC METHODS

=over

=item   QSqlQueryModel(QObject * parent)

=item   QSqlQueryModel(QObject * parent = 0)

=item   ~QSqlQueryModel()

=item  bool canFetchMore(const QModelIndex & parent)

=item  bool canFetchMore(const QModelIndex & parent = QModelIndex())

=item  void clear()

=item  int columnCount(const QModelIndex & parent)

=item  int columnCount(const QModelIndex & parent = QModelIndex())

=item  QVariant data(const QModelIndex & item, int role)

=item  QVariant data(const QModelIndex & item, int role = Qt::DisplayRole)

=item  void fetchMore(const QModelIndex & parent)

=item  void fetchMore(const QModelIndex & parent = QModelIndex())

=item  QVariant headerData(int section, Qt::Orientation orientation, int role)

=item  QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole)

=item  bool insertColumns(int column, int count, const QModelIndex & parent)

=item  bool insertColumns(int column, int count, const QModelIndex & parent = QModelIndex())

=item  QSqlError lastError()

=item  QSqlQuery query()

=item  QSqlRecord record()

=item  QSqlRecord record(int row)

=item  bool removeColumns(int column, int count, const QModelIndex & parent)

=item  bool removeColumns(int column, int count, const QModelIndex & parent = QModelIndex())

=item  int rowCount(const QModelIndex & parent)

=item  int rowCount(const QModelIndex & parent = QModelIndex())

=item  bool setHeaderData(int section, Qt::Orientation orientation, const QVariant & value, int role)

=item  bool setHeaderData(int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole)

=item  void setQuery(const QSqlQuery & query)

=item  void setQuery(const QString & query, const QSqlDatabase & db)

=item  void setQuery(const QString & query, const QSqlDatabase & db = QSqlDatabase())


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
