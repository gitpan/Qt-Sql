package Qt::Sql::QSqlRecord;
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
# classname: QSqlRecord
# file     : QtSql/qsqlrecord.h

use strict;
use warnings;
#use Carp;

our $VERSION = '0.01_03';


# FIXME: operator overload


1;

=head1 NAME

Qt::Sql::QSqlRecord

=head1 PUBLIC METHODS

=over

=item   QSqlRecord()

=item   QSqlRecord(const QSqlRecord & other)

=item   ~QSqlRecord()

=item  void append(const QSqlField & field)

=item  void clear()

=item  void clearValues()

=item  bool contains(const QString & name)

=item  int count()

=item  QSqlField field(int i)

=item  QSqlField field(const QString & name)

=item  QString fieldName(int i)

=item  int indexOf(const QString & name)

=item  void insert(int pos, const QSqlField & field)

=item  bool isEmpty()

=item  bool isGenerated(int i)

=item  bool isGenerated(const QString & name)

=item  bool isNull(int i)

=item  bool isNull(const QString & name)

=item  bool operator!=(const QSqlRecord & other)

=item  QSqlRecord & operator=(const QSqlRecord & other)

=item  bool operator==(const QSqlRecord & other)

=item  void remove(int pos)

=item  void replace(int pos, const QSqlField & field)

=item  void setGenerated(const QString & name, bool generated)

=item  void setGenerated(int i, bool generated)

=item  void setNull(int i)

=item  void setNull(const QString & name)

=item  void setValue(int i, const QVariant & val)

=item  void setValue(const QString & name, const QVariant & val)

=item  QVariant value(int i)

=item  QVariant value(const QString & name)


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
