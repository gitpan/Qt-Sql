package Qt::Sql::QSqlField;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlField
# file     : QtSql/qsqlfield.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_04';


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlField

=head1 PUBLIC METHODS

=over

=item   QSqlField(const QSqlField & other)

=item   QSqlField(const QString & fieldName, QVariant::Type type)

=item   QSqlField(const QString & fieldName, QVariant::Type type = QVariant::Invalid)

=item   QSqlField(const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid)

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

=item  bool operator!=(const QSqlField & other)

=item  QSqlField & operator=(const QSqlField & other)

=item  bool operator==(const QSqlField & other)

=item  int precision()

=item  QSqlField::RequiredStatus requiredStatus()

=item  void setAutoValue(bool autoVal)

=item  void setDefaultValue(const QVariant & value)

=item  void setGenerated(bool gen)

=item  void setLength(int fieldLength)

=item  void setName(const QString & name)

=item  void setPrecision(int precision)

=item  void setReadOnly(bool readOnly)

=item  void setRequired(bool required)

=item  void setRequiredStatus(QSqlField::RequiredStatus status)

=item  void setSqlType(int type)

=item  void setType(QVariant::Type type)

=item  void setValue(const QVariant & value)

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

Copyright (C) 2011 - 2012 by Dongxu Ma

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

See L<http://dev.perl.org/licenses/artistic.html>

=cut
