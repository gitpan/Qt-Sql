################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2012 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Sql			PACKAGE = Qt::Sql::Template::T000
PROTOTYPES: DISABLE

# classname: QMap<QString,QVariant>
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QMap<QString,QVariant>()
##  QMap<QString,QVariant>(const QMap<QString,QVariant> & other)
  void
T000::new(...)
PREINIT:
QMap<QString,QVariant> *ret;
QMap<QString,QVariant> * arg10;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    ret = new QMap<QString,QVariant>();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::Template::T000", (void *)ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Sql::Template::T000")) {
      arg10 = reinterpret_cast<QMap<QString,QVariant> *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QMap<QString,QVariant>(*arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::Template::T000", (void *)ret);
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

##  ~QMap<QString,QVariant>()
void
T000::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## void clear()
void
T000::clear(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->clear();
    XSRETURN(0);
    }

## bool contains(const QString & key)
void
T000::contains(...)
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

## int count(const QString & key)
void
T000::count(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    int ret = THIS->count(*arg00);
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## void detach()
void
T000::detach(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->detach();
    XSRETURN(0);
    }

## bool isDetached()
void
T000::isDetached(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isDetached();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isEmpty()
void
T000::isEmpty(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isEmpty();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isSharedWith(const QMap<QString,QVariant> & other)
void
T000::isSharedWith(...)
PREINIT:
QMap<QString,QVariant> * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::Template::T000")) {
      arg00 = reinterpret_cast<QMap<QString,QVariant> *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->isSharedWith(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## const QString key(const QVariant & value)
## const QString key(const QVariant & value, const QString & defaultKey)
void
T000::key(...)
PREINIT:
QVariant * arg00;
QVariant * arg10;
QString * arg11;
PPCODE:
    switch(items) {
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QVariant")) {
      arg00 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(1))));
    const QString ret = THIS->key(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new const QString(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QVariant") && sv_isa(ST(2), "Qt::Core::QString")) {
      arg10 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    const QString ret = THIS->key(*arg10, *arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new const QString(ret));
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

## bool operator!=(const QMap<QString,QVariant> & other)
void
T000::operator_not_equal(...)
PREINIT:
QMap<QString,QVariant> * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::Template::T000")) {
      arg00 = reinterpret_cast<QMap<QString,QVariant> *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->operator!=(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QMap<QString,QVariant> & operator=(const QMap<QString,QVariant> & other)
void
T000::operator_assign(...)
PREINIT:
QMap<QString,QVariant> * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::Template::T000")) {
      arg00 = reinterpret_cast<QMap<QString,QVariant> *>(SvIV((SV*)SvRV(ST(1))));
    QMap<QString,QVariant> * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::Template::T000", (void *)ret);
    XSRETURN(1);
    }

## bool operator==(const QMap<QString,QVariant> & other)
void
T000::operator_equal_to(...)
PREINIT:
QMap<QString,QVariant> * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::Template::T000")) {
      arg00 = reinterpret_cast<QMap<QString,QVariant> *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->operator==(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## const QVariant operator[](const QString & key)
void
T000::operator_array(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    const QVariant ret = THIS->operator[](*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new const QVariant(ret));
    XSRETURN(1);
    }

## int remove(const QString & key)
void
T000::remove(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    int ret = THIS->remove(*arg00);
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## void setInsertInOrder(bool ordered)
void
T000::setInsertInOrder(...)
PREINIT:
bool arg00;
PPCODE:
    if (1) {
      arg00 = (bool)SvTRUE(ST(1));
    (void)THIS->setInsertInOrder(arg00);
    XSRETURN(0);
    }

## void setSharable(bool sharable)
void
T000::setSharable(...)
PREINIT:
bool arg00;
PPCODE:
    if (1) {
      arg00 = (bool)SvTRUE(ST(1));
    (void)THIS->setSharable(arg00);
    XSRETURN(0);
    }

## int size()
void
T000::size(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->size();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QVariant take(const QString & key)
void
T000::take(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    QVariant ret = THIS->take(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QVariant", (void *)new QVariant(ret));
    XSRETURN(1);
    }

## const QVariant value(const QString & key)
## const QVariant value(const QString & key, const QVariant & defaultValue)
void
T000::value(...)
PREINIT:
QString * arg00;
QString * arg10;
QVariant * arg11;
PPCODE:
    switch(items) {
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    const QVariant ret = THIS->value(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new const QVariant(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QVariant")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(2))));
    const QVariant ret = THIS->value(*arg10, *arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new const QVariant(ret));
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
