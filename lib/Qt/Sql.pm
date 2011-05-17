package Qt::Sql;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: Qt::Sql
# file     : null

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_01';

require XSLoader;
XSLoader::load('Qt::Sql', $VERSION);

# FIXME: operator overload

# enums
# enum value in perl is enum item index number
sub QtDebugMsg() { 0 }
sub QtWarningMsg() { 1 }
sub QtCriticalMsg() { 2 }
sub QtFatalMsg() { 3 }
sub QtSystemMsg() { 4 }
sub Q_COMPLEX_TYPE() { 0 }
sub Q_PRIMITIVE_TYPE() { 1 }
sub Q_STATIC_TYPE() { 2 }
sub Q_MOVABLE_TYPE() { 3 }
sub Q_DUMMY_TYPE() { 4 }
sub LicensedCore() { 0 }
sub LicensedGui() { 0 }
sub LicensedNetwork() { 0 }
sub LicensedOpenGL() { 0 }
sub LicensedOpenVG() { 0 }
sub LicensedSql() { 0 }
sub LicensedMultimedia() { 0 }
sub LicensedXml() { 0 }
sub LicensedXmlPatterns() { 0 }
sub LicensedHelp() { 0 }
sub LicensedScript() { 0 }
sub LicensedScriptTools() { 0 }
sub LicensedQt3SupportLight() { 0 }
sub LicensedQt3Support() { 0 }
sub LicensedSvg() { 0 }
sub LicensedDeclarative() { 0 }
sub LicensedActiveQt() { 0 }
sub LicensedTest() { 0 }
sub LicensedDBus() { 0 }


1;

=head1 NAME

Qt::Sql

=head1 PUBLIC METHODS

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
