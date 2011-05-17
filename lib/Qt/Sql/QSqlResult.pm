package Qt::Sql::QSqlResult;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlResult
# file     : QtSql/qsqlresult.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_01';


# FIXME: operator overload

# enums
# enum value in perl is enum item index number
sub PositionalBinding() { 0 }
sub NamedBinding() { 1 }
sub BatchOperation() { 0 }
sub DetachFromResultSet() { 1 }
sub SetNumericalPrecision() { 2 }
sub NextResult() { 3 }


1;

=head1 NAME

Qt::Sql::QSqlResult

=head1 PUBLIC METHODS

=over

=item    ~QSqlResult()

=item   QVariant handle()


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
