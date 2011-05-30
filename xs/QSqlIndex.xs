################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Sql			PACKAGE = Qt::Sql::QSqlIndex
PROTOTYPES: DISABLE

# classname: QSqlIndex
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QSqlIndex()
##  QSqlIndex(, )
##  QSqlIndex(,  = QString())
##  QSqlIndex( = QString(),  = QString())
  void
QSqlIndex::new(...)
PREINIT:
QSqlIndex *ret;
QSqlIndex * arg00;
QString * arg10;
QString * arg11;
QString * arg20;
const QString & arg21_ = QString();
QString * arg21 = const_cast<QString *>(&arg21_);
const QString & arg30_ = QString();
QString * arg30 = const_cast<QString *>(&arg30_);
const QString & arg31_ = QString();
QString * arg31 = const_cast<QString *>(&arg31_);
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    ret = new QSqlIndex(*arg30, *arg31);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlIndex", (void *)ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Sql::QSqlIndex")) {
      arg00 = reinterpret_cast<QSqlIndex *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QSqlIndex(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlIndex", (void *)ret);
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg20 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QSqlIndex(*arg20, *arg21);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlIndex", (void *)ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QString")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    ret = new QSqlIndex(*arg10, *arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlIndex", (void *)ret);
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

##  ~QSqlIndex()
void
QSqlIndex::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## void append()
## void append(, )
void
QSqlIndex::append(...)
PREINIT:
QSqlField * arg00;
QSqlField * arg10;
bool arg11;
PPCODE:
    switch(items) {
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Sql::QSqlField")) {
      arg00 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->append(*arg00);
    XSRETURN(0);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Sql::QSqlField") && 1) {
      arg10 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = (bool)SvTRUE(ST(2));
    (void)THIS->append(*arg10, arg11);
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

## QString cursorName()
void
QSqlIndex::cursorName(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->cursorName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## bool isDescending()
void
QSqlIndex::isDescending(...)
PREINIT:
int arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    bool ret = THIS->isDescending(arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QString name()
void
QSqlIndex::name(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->name();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## QSqlIndex & operator=()
void
QSqlIndex::operator_assign(...)
PREINIT:
QSqlIndex * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlIndex")) {
      arg00 = reinterpret_cast<QSqlIndex *>(SvIV((SV*)SvRV(ST(1))));
    QSqlIndex * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlIndex", (void *)ret);
    XSRETURN(1);
    }

## void setCursorName()
void
QSqlIndex::setCursorName(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setCursorName(*arg00);
    XSRETURN(0);
    }

## void setDescending(, )
void
QSqlIndex::setDescending(...)
PREINIT:
int arg00;
bool arg01;
PPCODE:
    if (SvIOK(ST(1)) && 1) {
      arg00 = (int)SvIV(ST(1));
      arg01 = (bool)SvTRUE(ST(2));
    (void)THIS->setDescending(arg00, arg01);
    XSRETURN(0);
    }

## void setName()
void
QSqlIndex::setName(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setName(*arg00);
    XSRETURN(0);
    }
