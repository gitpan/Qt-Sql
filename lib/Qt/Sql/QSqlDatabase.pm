package Qt::Sql::QSqlDatabase;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlDatabase
# file     : QtSql/qsqldatabase.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_02';


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlDatabase

=head1 PUBLIC METHODS

=over

=item   QSqlDatabase()

=item   QSqlDatabase()

=item   ~QSqlDatabase()

=item  static QSqlDatabase addDatabase(, )

=item  static QSqlDatabase addDatabase(,  = QLatin1String(QSqlDatabase::defaultConnection))

=item  static QSqlDatabase addDatabase(, )

=item  static QSqlDatabase addDatabase(,  = QLatin1String(QSqlDatabase::defaultConnection))

=item  static QSqlDatabase cloneDatabase(, )

=item  void close()

=item  bool commit()

=item  QString connectOptions()

=item  QString connectionName()

=item  static QStringList connectionNames()

=item  static bool contains()

=item  static bool contains( = QLatin1String(QSqlDatabase::defaultConnection))

=item  static QSqlDatabase database(, )

=item  static QSqlDatabase database(,  = true)

=item  static QSqlDatabase database( = QLatin1String(QSqlDatabase::defaultConnection),  = true)

=item  QString databaseName()

=item  QSqlDriver * driver()

=item  QString driverName()

=item  static QStringList drivers()

=item  QSqlQuery exec()

=item  QSqlQuery exec( = QString())

=item  QString hostName()

=item  static bool isDriverAvailable()

=item  bool isOpen()

=item  bool isOpenError()

=item  bool isValid()

=item  QSqlError lastError()

=item  QSql::NumericalPrecisionPolicy numericalPrecisionPolicy()

=item  bool open()

=item  bool open(, )

=item  QSqlDatabase & operator=()

=item  QString password()

=item  int port()

=item  QSqlIndex primaryIndex()

=item  QSqlRecord record()

=item  static void registerSqlDriver(, )

=item  static void removeDatabase()

=item  bool rollback()

=item  void setConnectOptions()

=item  void setConnectOptions( = QString())

=item  void setDatabaseName()

=item  void setHostName()

=item  void setNumericalPrecisionPolicy()

=item  void setPassword()

=item  void setPort()

=item  void setUserName()

=item  QStringList tables()

=item  QStringList tables( = QSql::Tables)

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
