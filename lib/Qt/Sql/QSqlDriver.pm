package Qt::Sql::QSqlDriver;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlDriver
# file     : QtSql/qsqldriver.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_01';


# FIXME: operator overload

# enums
# enum value in perl is enum item index number
sub Transactions() { 0 }
sub QuerySize() { 1 }
sub BLOB() { 2 }
sub Unicode() { 3 }
sub PreparedQueries() { 4 }
sub NamedPlaceholders() { 5 }
sub PositionalPlaceholders() { 6 }
sub LastInsertId() { 7 }
sub BatchOperations() { 8 }
sub SimpleLocking() { 9 }
sub LowPrecisionNumbers() { 10 }
sub EventNotifications() { 11 }
sub FinishQuery() { 12 }
sub MultipleResultSets() { 13 }
sub WhereStatement() { 0 }
sub SelectStatement() { 1 }
sub UpdateStatement() { 2 }
sub InsertStatement() { 3 }
sub DeleteStatement() { 4 }
sub FieldName() { 0 }
sub TableName() { 1 }


1;

=head1 NAME

Qt::Sql::QSqlDriver

=head1 PUBLIC METHODS

=over

=item    QSqlDriver(QObject * parent = 0)

=item    QSqlDriver(QObject * parent)

=item    ~QSqlDriver()

=item   bool beginTransaction()

=item   void close()

=item   bool commitTransaction()

=item   QSqlResult * createResult()

=item   QString escapeIdentifier(const QString & identifier, QSqlDriver::IdentifierType type)

=item   QString formatValue(const QSqlField & field, bool trimStrings = false)

=item   QString formatValue(const QSqlField & field, bool trimStrings)

=item   QVariant handle()

=item   bool hasFeature(QSqlDriver::DriverFeature f)

=item   bool isIdentifierEscaped(const QString & identifier, QSqlDriver::IdentifierType type)

=item   bool isOpen()

=item   bool isOpenError()

=item   QSqlError lastError()

=item   QSql::NumericalPrecisionPolicy numericalPrecisionPolicy()

=item   bool open(const QString & db, const QString & user, const QString & password, const QString & host, int port, const QString & connOpts = QString())

=item   bool open(const QString & db, const QString & user, const QString & password, const QString & host, int port, const QString & connOpts)

=item   bool open(const QString & db, const QString & user, const QString & password, const QString & host, int port = -1, const QString & connOpts = QString())

=item   bool open(const QString & db, const QString & user, const QString & password, const QString & host, int port, const QString & connOpts = QString())

=item   bool open(const QString & db, const QString & user, const QString & password, const QString & host = QString(), int port = -1, const QString & connOpts = QString())

=item   bool open(const QString & db, const QString & user, const QString & password, const QString & host, int port = -1, const QString & connOpts = QString())

=item   bool open(const QString & db, const QString & user, const QString & password = QString(), const QString & host = QString(), int port = -1, const QString & connOpts = QString())

=item   bool open(const QString & db, const QString & user, const QString & password, const QString & host = QString(), int port = -1, const QString & connOpts = QString())

=item   bool open(const QString & db, const QString & user = QString(), const QString & password = QString(), const QString & host = QString(), int port = -1, const QString & connOpts = QString())

=item   bool open(const QString & db, const QString & user, const QString & password = QString(), const QString & host = QString(), int port = -1, const QString & connOpts = QString())

=item   QSqlIndex primaryIndex(const QString & tableName)

=item   QSqlRecord record(const QString & tableName)

=item   bool rollbackTransaction()

=item   void setNumericalPrecisionPolicy(QSql::NumericalPrecisionPolicy precisionPolicy)

=item   QString sqlStatement(QSqlDriver::StatementType type, const QString & tableName, const QSqlRecord & rec, bool preparedStatement)

=item   QString stripDelimiters(const QString & identifier, QSqlDriver::IdentifierType type)

=item   bool subscribeToNotification(const QString & name)

=item   QStringList subscribedToNotifications()

=item   QStringList tables(QSql::TableType tableType)

=item   bool unsubscribeFromNotification(const QString & name)


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
