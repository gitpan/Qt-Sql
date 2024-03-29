package Qt::Sql::QSqlQuery;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlQuery
# file     : QtSql/qsqlquery.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_04';


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlQuery

=head1 PUBLIC METHODS

=over

=item   QSqlQuery(QSqlResult * r)

=item   QSqlQuery(QSqlDatabase db)

=item   QSqlQuery(const QSqlQuery & other)

=item   QSqlQuery(const QString & query, QSqlDatabase db)

=item   QSqlQuery(const QString & query, QSqlDatabase db = QSqlDatabase())

=item   QSqlQuery(const QString & query = QString(), QSqlDatabase db = QSqlDatabase())

=item   ~QSqlQuery()

=item  void addBindValue(const QVariant & val, QFlags<QSql::ParamTypeFlag> type)

=item  void addBindValue(const QVariant & val, QFlags<QSql::ParamTypeFlag> type = QSql::In)

=item  int at()

=item  void bindValue(const QString & placeholder, const QVariant & val, QFlags<QSql::ParamTypeFlag> type)

=item  void bindValue(const QString & placeholder, const QVariant & val, QFlags<QSql::ParamTypeFlag> type = QSql::In)

=item  void bindValue(int pos, const QVariant & val, QFlags<QSql::ParamTypeFlag> type)

=item  void bindValue(int pos, const QVariant & val, QFlags<QSql::ParamTypeFlag> type = QSql::In)

=item  QVariant boundValue(const QString & placeholder)

=item  QVariant boundValue(int pos)

=item  QMap<QString,QVariant> boundValues()

=item  void clear()

=item  const QSqlDriver * driver()

=item  bool exec()

=item  bool exec(const QString & query)

=item  bool execBatch(QSqlQuery::BatchExecutionMode mode)

=item  bool execBatch(QSqlQuery::BatchExecutionMode mode = QSqlQuery::ValuesAsRows)

=item  QString executedQuery()

=item  void finish()

=item  bool first()

=item  bool isActive()

=item  bool isForwardOnly()

=item  bool isNull(int field)

=item  bool isSelect()

=item  bool isValid()

=item  bool last()

=item  QSqlError lastError()

=item  QVariant lastInsertId()

=item  QString lastQuery()

=item  bool next()

=item  bool nextResult()

=item  int numRowsAffected()

=item  QSql::NumericalPrecisionPolicy numericalPrecisionPolicy()

=item  QSqlQuery & operator=(const QSqlQuery & other)

=item  bool prepare(const QString & query)

=item  bool previous()

=item  QSqlRecord record()

=item  const QSqlResult * result()

=item  bool seek(int i, bool relative)

=item  bool seek(int i, bool relative = false)

=item  void setForwardOnly(bool forward)

=item  void setNumericalPrecisionPolicy(QSql::NumericalPrecisionPolicy precisionPolicy)

=item  int size()

=item  QVariant value(int i)


=back

=head1 ENUM VALUES

=over

=item ValuesAsRows

=item ValuesAsColumns


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
