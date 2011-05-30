package Qt::Sql::QSqlQuery;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlQuery
# file     : QtSql/qsqlquery.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_02';


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlQuery

=head1 PUBLIC METHODS

=over

=item   QSqlQuery()

=item   QSqlQuery()

=item   QSqlQuery()

=item   QSqlQuery(, )

=item   QSqlQuery(,  = QSqlDatabase())

=item   QSqlQuery( = QString(),  = QSqlDatabase())

=item   ~QSqlQuery()

=item  void addBindValue(, )

=item  void addBindValue(,  = QSql::In)

=item  int at()

=item  void bindValue(, , )

=item  void bindValue(, ,  = QSql::In)

=item  void bindValue(, , )

=item  void bindValue(, ,  = QSql::In)

=item  QVariant boundValue()

=item  QVariant boundValue()

=item  void clear()

=item  const QSqlDriver * driver()

=item  bool exec()

=item  bool exec()

=item  bool execBatch()

=item  bool execBatch( = QSqlQuery::ValuesAsRows)

=item  QString executedQuery()

=item  void finish()

=item  bool first()

=item  bool isActive()

=item  bool isForwardOnly()

=item  bool isNull()

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

=item  QSqlQuery & operator=()

=item  bool prepare()

=item  bool previous()

=item  QSqlRecord record()

=item  const QSqlResult * result()

=item  bool seek(, )

=item  bool seek(,  = false)

=item  void setForwardOnly()

=item  void setNumericalPrecisionPolicy()

=item  int size()

=item  QVariant value()


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

Copyright (C) 2011 - 2011 by Dongxu Ma

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

See L<http://dev.perl.org/licenses/artistic.html>

=cut
