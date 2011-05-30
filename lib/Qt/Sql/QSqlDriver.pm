package Qt::Sql::QSqlDriver;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlDriver
# file     : QtSql/qsqldriver.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_02';
our $ISA     = qw/Qt::Core::QObject/;


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlDriver

=head1 PUBLIC METHODS

=over

=item   QSqlDriver()

=item   QSqlDriver( = 0)

=item   ~QSqlDriver()

=item  bool beginTransaction()

=item  void close()

=item  bool commitTransaction()

=item  QSqlResult * createResult()

=item  QString escapeIdentifier(, )

=item  QString formatValue(, )

=item  QString formatValue(,  = false)

=item  QVariant handle()

=item  bool hasFeature()

=item  bool isIdentifierEscaped(, )

=item  bool isOpen()

=item  bool isOpenError()

=item  QSqlError lastError()

=item  QSql::NumericalPrecisionPolicy numericalPrecisionPolicy()

=item  bool open(, , , , , )

=item  bool open(, , , , ,  = QString())

=item  bool open(, , , ,  = -1,  = QString())

=item  bool open(, , ,  = QString(),  = -1,  = QString())

=item  bool open(, ,  = QString(),  = QString(),  = -1,  = QString())

=item  bool open(,  = QString(),  = QString(),  = QString(),  = -1,  = QString())

=item  QSqlIndex primaryIndex()

=item  QSqlRecord record()

=item  bool rollbackTransaction()

=item  void setNumericalPrecisionPolicy()

=item  QString sqlStatement(, , , )

=item  QString stripDelimiters(, )

=item  bool subscribeToNotification()

=item  QStringList subscribedToNotifications()

=item  QStringList tables()

=item  bool unsubscribeFromNotification()


=back

=head1 ENUM VALUES

=over

=item Transactions

=item QuerySize

=item BLOB

=item Unicode

=item PreparedQueries

=item NamedPlaceholders

=item PositionalPlaceholders

=item LastInsertId

=item BatchOperations

=item SimpleLocking

=item LowPrecisionNumbers

=item EventNotifications

=item FinishQuery

=item MultipleResultSets

=item WhereStatement

=item SelectStatement

=item UpdateStatement

=item InsertStatement

=item DeleteStatement

=item FieldName

=item TableName


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
