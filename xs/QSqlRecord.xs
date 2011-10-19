################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Sql			PACKAGE = Qt::Sql::QSqlRecord
PROTOTYPES: DISABLE

# classname: QSqlRecord
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QSqlRecord()
##  QSqlRecord(const QSqlRecord & other)
  void
QSqlRecord::new(...)
PREINIT:
QSqlRecord *ret;
QSqlRecord * arg10;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    ret = new QSqlRecord();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlRecord", (void *)ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Sql::QSqlRecord")) {
      arg10 = reinterpret_cast<QSqlRecord *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QSqlRecord(*arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlRecord", (void *)ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      default:
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
    }

##  ~QSqlRecord()
void
QSqlRecord::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## void append(const QSqlField & field)
void
QSqlRecord::append(...)
PREINIT:
QSqlField * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlField")) {
      arg00 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->append(*arg00);
    XSRETURN(0);
    }

## void clear()
void
QSqlRecord::clear(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->clear();
    XSRETURN(0);
    }

## void clearValues()
void
QSqlRecord::clearValues(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->clearValues();
    XSRETURN(0);
    }

## bool contains(const QString & name)
void
QSqlRecord::contains(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->contains(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## int count()
void
QSqlRecord::count(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->count();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QSqlField field(int i)
## QSqlField field(const QString & name)
void
QSqlRecord::field(...)
PREINIT:
int arg00;
QString * arg10;
PPCODE:
    switch(items) {
      case 2:
      {
        if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    QSqlField ret = THIS->field(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlField", (void *)new QSqlField(ret));
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    QSqlField ret = THIS->field(*arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlField", (void *)new QSqlField(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      default:
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
    }

## QString fieldName(int i)
void
QSqlRecord::fieldName(...)
PREINIT:
int arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    QString ret = THIS->fieldName(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## int indexOf(const QString & name)
void
QSqlRecord::indexOf(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    int ret = THIS->indexOf(*arg00);
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## void insert(int pos, const QSqlField & field)
void
QSqlRecord::insert(...)
PREINIT:
int arg00;
QSqlField * arg01;
PPCODE:
    if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Sql::QSqlField")) {
      arg00 = (int)SvIV(ST(1));
      arg01 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(2))));
    (void)THIS->insert(arg00, *arg01);
    XSRETURN(0);
    }

## bool isEmpty()
void
QSqlRecord::isEmpty(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isEmpty();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isGenerated(int i)
## bool isGenerated(const QString & name)
void
QSqlRecord::isGenerated(...)
PREINIT:
int arg00;
QString * arg10;
PPCODE:
    switch(items) {
      case 2:
      {
        if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    bool ret = THIS->isGenerated(arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->isGenerated(*arg10);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      default:
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
    }

## bool isNull(int i)
## bool isNull(const QString & name)
void
QSqlRecord::isNull(...)
PREINIT:
int arg00;
QString * arg10;
PPCODE:
    switch(items) {
      case 2:
      {
        if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    bool ret = THIS->isNull(arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->isNull(*arg10);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      default:
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
    }

## bool operator!=(const QSqlRecord & other)
void
QSqlRecord::operator_not_equal(...)
PREINIT:
QSqlRecord * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlRecord")) {
      arg00 = reinterpret_cast<QSqlRecord *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->operator!=(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QSqlRecord & operator=(const QSqlRecord & other)
void
QSqlRecord::operator_assign(...)
PREINIT:
QSqlRecord * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlRecord")) {
      arg00 = reinterpret_cast<QSqlRecord *>(SvIV((SV*)SvRV(ST(1))));
    QSqlRecord * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlRecord", (void *)ret);
    XSRETURN(1);
    }

## bool operator==(const QSqlRecord & other)
void
QSqlRecord::operator_equal_to(...)
PREINIT:
QSqlRecord * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlRecord")) {
      arg00 = reinterpret_cast<QSqlRecord *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->operator==(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## void remove(int pos)
void
QSqlRecord::remove(...)
PREINIT:
int arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    (void)THIS->remove(arg00);
    XSRETURN(0);
    }

## void replace(int pos, const QSqlField & field)
void
QSqlRecord::replace(...)
PREINIT:
int arg00;
QSqlField * arg01;
PPCODE:
    if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Sql::QSqlField")) {
      arg00 = (int)SvIV(ST(1));
      arg01 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(2))));
    (void)THIS->replace(arg00, *arg01);
    XSRETURN(0);
    }

## void setGenerated(const QString & name, bool generated)
## void setGenerated(int i, bool generated)
void
QSqlRecord::setGenerated(...)
PREINIT:
QString * arg00;
bool arg01;
int arg10;
bool arg11;
PPCODE:
    switch(items) {
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && 1) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = (bool)SvTRUE(ST(2));
    (void)THIS->setGenerated(*arg00, arg01);
    XSRETURN(0);
    }
        else if (SvIOK(ST(1)) && 1) {
      arg10 = (int)SvIV(ST(1));
      arg11 = (bool)SvTRUE(ST(2));
    (void)THIS->setGenerated(arg10, arg11);
    XSRETURN(0);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      default:
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
    }

## void setNull(int i)
## void setNull(const QString & name)
void
QSqlRecord::setNull(...)
PREINIT:
int arg00;
QString * arg10;
PPCODE:
    switch(items) {
      case 2:
      {
        if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    (void)THIS->setNull(arg00);
    XSRETURN(0);
    }
        else if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setNull(*arg10);
    XSRETURN(0);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      default:
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
    }

## void setValue(int i, const QVariant & val)
## void setValue(const QString & name, const QVariant & val)
void
QSqlRecord::setValue(...)
PREINIT:
int arg00;
QVariant * arg01;
QString * arg10;
QVariant * arg11;
PPCODE:
    switch(items) {
      case 3:
      {
        if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Core::QVariant")) {
      arg00 = (int)SvIV(ST(1));
      arg01 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(2))));
    (void)THIS->setValue(arg00, *arg01);
    XSRETURN(0);
    }
        else if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QVariant")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(2))));
    (void)THIS->setValue(*arg10, *arg11);
    XSRETURN(0);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      default:
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
    }

## QVariant value(int i)
## QVariant value(const QString & name)
void
QSqlRecord::value(...)
PREINIT:
int arg00;
QString * arg10;
PPCODE:
    switch(items) {
      case 2:
      {
        if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    QVariant ret = THIS->value(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QVariant", (void *)new QVariant(ret));
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    QVariant ret = THIS->value(*arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QVariant", (void *)new QVariant(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      default:
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
    }
