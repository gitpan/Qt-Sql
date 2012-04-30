package Qt::Sql::QSqlDriver;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlDriver
# file     : QtSql/qsqldriver.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_04';


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlDriver

=head1 PUBLIC METHODS

=over

=item   QSqlDriver(QObject * parent)

=item   QSqlDriver(QObject * parent = 0)

=item   ~QSqlDriver()

=item  bool beginTransaction()

=item  void close()

=item  bool commitTransaction()

=item  QSqlResult * createResult()

=item  QString escapeIdentifier(const QString & identifier, QSqlDriver::IdentifierType type)

=item  QString formatValue(const QSqlField & field, bool trimStrings)

=item  QString formatValue(const QSqlField & field, bool trimStrings = false)

=item  QVariant handle()

=item  bool hasFeature(QSqlDriver::DriverFeature f)

=item  bool isIdentifierEscaped(const QString & identifier, QSqlDriver::IdentifierType type)

=item  bool isOpen()

=item  bool isOpenError()

=item  QSqlError lastError()

=item  QSql::NumericalPrecisionPolicy numericalPrecisionPolicy()

=item  bool open(const QString & db, const QString & user, const QString & password, const QString & host, int port, const QString & connOpts)

=item  bool open(const QString & db, const QString & user, const QString & password, const QString & host, int port, const QString & connOpts = QString())

=item  bool open(const QString & db, const QString & user, const QString & password, const QString & host, int port = -1, const QString & connOpts = QString())

=item  bool open(const QString & db, const QString & user, const QString & password, const QString & host = QString(), int port = -1, const QString & connOpts = QString())

=item  bool open(const QString & db, const QString & user, const QString & password = QString(), const QString & host = QString(), int port = -1, const QString & connOpts = QString())

=item  bool open(const QString & db, const QString & user = QString(), const QString & password = QString(), const QString & host = QString(), int port = -1, const QString & connOpts = QString())

=item  QSqlIndex primaryIndex(const QString & tableName)

=item  QSqlRecord record(const QString & tableName)

=item  bool rollbackTransaction()

=item  void setNumericalPrecisionPolicy(QSql::NumericalPrecisionPolicy precisionPolicy)

=item  QString sqlStatement(QSqlDriver::StatementType type, const QString & tableName, const QSqlRecord & rec, bool preparedStatement)

=item  QString stripDelimiters(const QString & identifier, QSqlDriver::IdentifierType type)

=item  bool subscribeToNotification(const QString & name)

=item  QStringList subscribedToNotifications()

=item  QStringList tables(QSql::TableType tableType)

=item  bool unsubscribeFromNotification(const QString & name)


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

Copyright (C) 2011 - 2012 by Dongxu Ma

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

See L<http://dev.perl.org/licenses/artistic.html>

=cut
