package Qt::Sql::QSqlError;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlError
# file     : QtSql/qsqlerror.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_01';


# FIXME: operator overload

# enums
# enum value in perl is enum item index number
sub NoError() { 0 }
sub ConnectionError() { 1 }
sub StatementError() { 2 }
sub TransactionError() { 3 }
sub UnknownError() { 4 }


1;

=head1 NAME

Qt::Sql::QSqlError

=head1 PUBLIC METHODS

=over

=item    QSqlError(const QSqlError & other)

=item    QSqlError(const QString & driverText, const QString & databaseText, QSqlError::ErrorType type, int number = -1)

=item    QSqlError(const QString & driverText, const QString & databaseText, QSqlError::ErrorType type, int number)

=item    QSqlError(const QString & driverText, const QString & databaseText, QSqlError::ErrorType type = QSqlError::NoError, int number = -1)

=item    QSqlError(const QString & driverText, const QString & databaseText, QSqlError::ErrorType type, int number = -1)

=item    QSqlError(const QString & driverText, const QString & databaseText = QString(), QSqlError::ErrorType type = QSqlError::NoError, int number = -1)

=item    QSqlError(const QString & driverText, const QString & databaseText, QSqlError::ErrorType type = QSqlError::NoError, int number = -1)

=item    QSqlError(const QString & driverText = QString(), const QString & databaseText = QString(), QSqlError::ErrorType type = QSqlError::NoError, int number = -1)

=item    QSqlError(const QString & driverText, const QString & databaseText = QString(), QSqlError::ErrorType type = QSqlError::NoError, int number = -1)

=item    ~QSqlError()

=item   QString databaseText()

=item   QString driverText()

=item   bool isValid()

=item   int number()

=item   QSqlError & operator=(const QSqlError & other)

=item   void setDatabaseText(const QString & databaseText)

=item   void setDriverText(const QString & driverText)

=item   void setNumber(int number)

=item   void setType(QSqlError::ErrorType type)

=item   QString text()

=item   QSqlError::ErrorType type()


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
