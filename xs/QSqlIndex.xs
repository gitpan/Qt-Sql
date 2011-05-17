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

##  QSqlIndex(const QSqlIndex & other)
##  QSqlIndex(const QString & cursorName, const QString & name = QString())
##  QSqlIndex(const QString & cursorName, const QString & name)
##  QSqlIndex(const QString & cursorName = QString(), const QString & name = QString())
##  QSqlIndex(const QString & cursorName, const QString & name = QString())
  void
QSqlIndex::new(...)
PREINIT:
QSqlIndex *ret;
QSqlIndex * arg00;
QString * arg10;
const QString & arg11_ = QString();
QString * arg11 = const_cast<QString *>(&arg11_);
QString * arg20;
QString * arg21;
const QString & arg30_ = QString();
QString * arg30 = const_cast<QString *>(&arg30_);
const QString & arg31_ = QString();
QString * arg31 = const_cast<QString *>(&arg31_);
QString * arg40;
const QString & arg41_ = QString();
QString * arg41 = const_cast<QString *>(&arg41_);
PPCODE:
    switch(items) {
    case 2:
      {
        if (sv_isa(ST(1), "Qt::Sql::QSqlIndex")) {
        arg00 = reinterpret_cast<QSqlIndex *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Sql::QSqlIndex");
    ret = new QSqlIndex(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlIndex", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 3:
      {
        if (sv_isa(ST(1), "")) {
        arg20 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg20 is not of type ");
    if (sv_isa(ST(2), "")) {
        arg21 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg21 is not of type ");
    ret = new QSqlIndex(*arg20, *arg21);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlIndex", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 1:
      {
        ret = new QSqlIndex(*arg30, *arg31);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlIndex", (void *)ret);
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

##  ~QSqlIndex()
void
QSqlIndex::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## void append(const QSqlField & field)
## void append(const QSqlField & field, bool desc)
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
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Sql::QSqlField");
    (void)THIS->append(*arg00);
    XSRETURN(0);
        break;
      }
    case 3:
      {
        if (sv_isa(ST(1), "Qt::Sql::QSqlField")) {
        arg10 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type Qt::Sql::QSqlField");
    arg11 = (bool)SvTRUE(ST(2));
    (void)THIS->append(*arg10, arg11);
    XSRETURN(0);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

## QString cursorName()
void
QSqlIndex::cursorName(...)
PREINIT:
PPCODE:
    QString ret = THIS->cursorName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## bool isDescending(int i)
void
QSqlIndex::isDescending(...)
PREINIT:
int arg00;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    bool ret = THIS->isDescending(arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QString name()
void
QSqlIndex::name(...)
PREINIT:
PPCODE:
    QString ret = THIS->name();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## QSqlIndex & operator=(const QSqlIndex & other)
void
QSqlIndex::operator_assign(...)
PREINIT:
QSqlIndex * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlIndex")) {
        arg00 = reinterpret_cast<QSqlIndex *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Sql::QSqlIndex");
    QSqlIndex * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlIndex", (void *)ret);
    XSRETURN(1);

## void setCursorName(const QString & cursorName)
void
QSqlIndex::setCursorName(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    (void)THIS->setCursorName(*arg00);
    XSRETURN(0);

## void setDescending(int i, bool desc)
void
QSqlIndex::setDescending(...)
PREINIT:
int arg00;
bool arg01;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    arg01 = (bool)SvTRUE(ST(2));
    (void)THIS->setDescending(arg00, arg01);
    XSRETURN(0);

## void setName(const QString & name)
void
QSqlIndex::setName(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    (void)THIS->setName(*arg00);
    XSRETURN(0);
