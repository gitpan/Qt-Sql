package Qt::Sql::QSqlError;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlError
# file     : QtSql/qsqlerror.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_02';


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlError

=head1 PUBLIC METHODS

=over

=item   QSqlError()

=item   QSqlError(, , , )

=item   QSqlError(, , ,  = -1)

=item   QSqlError(, ,  = QSqlError::NoError,  = -1)

=item   QSqlError(,  = QString(),  = QSqlError::NoError,  = -1)

=item   QSqlError( = QString(),  = QString(),  = QSqlError::NoError,  = -1)

=item   ~QSqlError()

=item  QString databaseText()

=item  QString driverText()

=item  bool isValid()

=item  int number()

=item  QSqlError & operator=()

=item  void setDatabaseText()

=item  void setDriverText()

=item  void setNumber()

=item  void setType()

=item  QString text()

=item  QSqlError::ErrorType type()


=back

=head1 ENUM VALUES

=over

=item NoError

=item ConnectionError

=item StatementError

=item TransactionError

=item UnknownError


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
