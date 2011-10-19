package Qt::Sql::QSqlDatabase;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlDatabase
# file     : QtSql/qsqldatabase.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_03';


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlDatabase

=head1 PUBLIC METHODS

=over

=item   QSqlDatabase()

=item   QSqlDatabase(const QSqlDatabase & other)

=item   ~QSqlDatabase()

=item  static QSqlDatabase addDatabase(const QString & type, const QString & connectionName)

=item  static QSqlDatabase addDatabase(const QString & type, const QString & connectionName = QLatin1String(QSqlDatabase::defaultConnection))

=item  static QSqlDatabase addDatabase(QSqlDriver * driver, const QString & connectionName)

=item  static QSqlDatabase addDatabase(QSqlDriver * driver, const QString & connectionName = QLatin1String(QSqlDatabase::defaultConnection))

=item  static QSqlDatabase cloneDatabase(const QSqlDatabase & other, const QString & connectionName)

=item  void close()

=item  bool commit()

=item  QString connectOptions()

=item  QString connectionName()

=item  static QStringList connectionNames()

=item  static bool contains(const QString & connectionName)

=item  static bool contains(const QString & connectionName = QLatin1String(QSqlDatabase::defaultConnection))

=item  static QSqlDatabase database(const QString & connectionName, bool open)

=item  static QSqlDatabase database(const QString & connectionName, bool open = true)

=item  static QSqlDatabase database(const QString & connectionName = QLatin1String(QSqlDatabase::defaultConnection), bool open = true)

=item  QString databaseName()

=item  QSqlDriver * driver()

=item  QString driverName()

=item  static QStringList drivers()

=item  QSqlQuery exec(const QString & query)

=item  QSqlQuery exec(const QString & query = QString())

=item  QString hostName()

=item  static bool isDriverAvailable(const QString & name)

=item  bool isOpen()

=item  bool isOpenError()

=item  bool isValid()

=item  QSqlError lastError()

=item  QSql::NumericalPrecisionPolicy numericalPrecisionPolicy()

=item  bool open()

=item  bool open(const QString & user, const QString & password)

=item  QSqlDatabase & operator=(const QSqlDatabase & other)

=item  QString password()

=item  int port()

=item  QSqlIndex primaryIndex(const QString & tablename)

=item  QSqlRecord record(const QString & tablename)

=item  static void registerSqlDriver(const QString & name, QSqlDriverCreatorBase * creator)

=item  static void removeDatabase(const QString & connectionName)

=item  bool rollback()

=item  void setConnectOptions(const QString & options)

=item  void setConnectOptions(const QString & options = QString())

=item  void setDatabaseName(const QString & name)

=item  void setHostName(const QString & host)

=item  void setNumericalPrecisionPolicy(QSql::NumericalPrecisionPolicy precisionPolicy)

=item  void setPassword(const QString & password)

=item  void setPort(int p)

=item  void setUserName(const QString & name)

=item  QStringList tables(QSql::TableType type)

=item  QStringList tables(QSql::TableType type = QSql::Tables)

=item  bool transaction()

=item  QString userName()


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
