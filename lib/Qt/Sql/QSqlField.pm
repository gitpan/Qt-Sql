package Qt::Sql::QSqlField;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlField
# file     : QtSql/qsqlfield.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_02';


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlField

=head1 PUBLIC METHODS

=over

=item   QSqlField()

=item   QSqlField(, )

=item   QSqlField(,  = QVariant::Invalid)

=item   QSqlField( = QString(),  = QVariant::Invalid)

=item   ~QSqlField()

=item  void clear()

=item  QVariant defaultValue()

=item  bool isAutoValue()

=item  bool isGenerated()

=item  bool isNull()

=item  bool isReadOnly()

=item  bool isValid()

=item  int length()

=item  QString name()

=item  bool operator!=()

=item  QSqlField & operator=()

=item  bool operator==()

=item  int precision()

=item  QSqlField::RequiredStatus requiredStatus()

=item  void setAutoValue()

=item  void setDefaultValue()

=item  void setGenerated()

=item  void setLength()

=item  void setName()

=item  void setPrecision()

=item  void setReadOnly()

=item  void setRequired()

=item  void setRequiredStatus()

=item  void setSqlType()

=item  void setType()

=item  void setValue()

=item  QVariant::Type type()

=item  int typeID()

=item  QVariant value()


=back

=head1 ENUM VALUES

=over

=item Unknown

=item Optional

=item Required


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
