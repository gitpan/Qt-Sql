################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Sql			PACKAGE = Qt::Sql::QSqlError
PROTOTYPES: DISABLE

# classname: QSqlError
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QSqlError(const QSqlError & other)
##  QSqlError(const QString & driverText, const QString & databaseText, QSqlError::ErrorType type, int number = -1)
##  QSqlError(const QString & driverText, const QString & databaseText, QSqlError::ErrorType type, int number)
##  QSqlError(const QString & driverText, const QString & databaseText, QSqlError::ErrorType type = QSqlError::NoError, int number = -1)
##  QSqlError(const QString & driverText, const QString & databaseText, QSqlError::ErrorType type, int number = -1)
##  QSqlError(const QString & driverText, const QString & databaseText = QString(), QSqlError::ErrorType type = QSqlError::NoError, int number = -1)
##  QSqlError(const QString & driverText, const QString & databaseText, QSqlError::ErrorType type = QSqlError::NoError, int number = -1)
##  QSqlError(const QString & driverText = QString(), const QString & databaseText = QString(), QSqlError::ErrorType type = QSqlError::NoError, int number = -1)
##  QSqlError(const QString & driverText, const QString & databaseText = QString(), QSqlError::ErrorType type = QSqlError::NoError, int number = -1)
  void
QSqlError::new(...)
PREINIT:
QSqlError *ret;
QSqlError * arg00;
QString * arg10;
QString * arg11;
QSqlError::ErrorType arg12;
int arg13 = -1;
QString * arg20;
QString * arg21;
QSqlError::ErrorType arg22;
int arg23;
QString * arg30;
QString * arg31;
QSqlError::ErrorType arg32 = QSqlError::NoError;
int arg33 = -1;
QString * arg40;
QString * arg41;
QSqlError::ErrorType arg42;
int arg43 = -1;
QString * arg50;
const QString & arg51_ = QString();
QString * arg51 = const_cast<QString *>(&arg51_);
QSqlError::ErrorType arg52 = QSqlError::NoError;
int arg53 = -1;
QString * arg60;
QString * arg61;
QSqlError::ErrorType arg62 = QSqlError::NoError;
int arg63 = -1;
const QString & arg70_ = QString();
QString * arg70 = const_cast<QString *>(&arg70_);
const QString & arg71_ = QString();
QString * arg71 = const_cast<QString *>(&arg71_);
QSqlError::ErrorType arg72 = QSqlError::NoError;
int arg73 = -1;
QString * arg80;
const QString & arg81_ = QString();
QString * arg81 = const_cast<QString *>(&arg81_);
QSqlError::ErrorType arg82 = QSqlError::NoError;
int arg83 = -1;
PPCODE:
    switch(items) {
    case 2:
      {
        if (sv_isa(ST(1), "Qt::Sql::QSqlError")) {
        arg00 = reinterpret_cast<QSqlError *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Sql::QSqlError");
    ret = new QSqlError(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 4:
      {
        if (sv_isa(ST(1), "")) {
        arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type ");
    if (sv_isa(ST(2), "")) {
        arg11 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg11 is not of type ");
    switch(SvIV(ST(3))) {
    case 0:
      arg12 = QSqlError::NoError;
      break;
    case 1:
      arg12 = QSqlError::ConnectionError;
      break;
    case 2:
      arg12 = QSqlError::StatementError;
      break;
    case 3:
      arg12 = QSqlError::TransactionError;
      break;
    case 4:
      arg12 = QSqlError::UnknownError;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QSqlError::ErrorType passed in");
    }
    ret = new QSqlError(*arg10, *arg11, arg12, arg13);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 5:
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
    switch(SvIV(ST(3))) {
    case 0:
      arg22 = QSqlError::NoError;
      break;
    case 1:
      arg22 = QSqlError::ConnectionError;
      break;
    case 2:
      arg22 = QSqlError::StatementError;
      break;
    case 3:
      arg22 = QSqlError::TransactionError;
      break;
    case 4:
      arg22 = QSqlError::UnknownError;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QSqlError::ErrorType passed in");
    }
    arg23 = (int)SvIV(ST(4));
    ret = new QSqlError(*arg20, *arg21, arg22, arg23);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 3:
      {
        if (sv_isa(ST(1), "")) {
        arg30 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg30 is not of type ");
    if (sv_isa(ST(2), "")) {
        arg31 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg31 is not of type ");
    ret = new QSqlError(*arg30, *arg31, arg32, arg33);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 1:
      {
        ret = new QSqlError(*arg70, *arg71, arg72, arg73);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)ret);
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

##  ~QSqlError()
void
QSqlError::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## QString databaseText()
void
QSqlError::databaseText(...)
PREINIT:
PPCODE:
    QString ret = THIS->databaseText();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## QString driverText()
void
QSqlError::driverText(...)
PREINIT:
PPCODE:
    QString ret = THIS->driverText();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## bool isValid()
void
QSqlError::isValid(...)
PREINIT:
PPCODE:
    bool ret = THIS->isValid();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## int number()
void
QSqlError::number(...)
PREINIT:
PPCODE:
    int ret = THIS->number();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## QSqlError & operator=(const QSqlError & other)
void
QSqlError::operator_assign(...)
PREINIT:
QSqlError * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlError")) {
        arg00 = reinterpret_cast<QSqlError *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Sql::QSqlError");
    QSqlError * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)ret);
    XSRETURN(1);

## void setDatabaseText(const QString & databaseText)
void
QSqlError::setDatabaseText(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    (void)THIS->setDatabaseText(*arg00);
    XSRETURN(0);

## void setDriverText(const QString & driverText)
void
QSqlError::setDriverText(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    (void)THIS->setDriverText(*arg00);
    XSRETURN(0);

## void setNumber(int number)
void
QSqlError::setNumber(...)
PREINIT:
int arg00;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    (void)THIS->setNumber(arg00);
    XSRETURN(0);

## void setType(QSqlError::ErrorType type)
void
QSqlError::setType(...)
PREINIT:
QSqlError::ErrorType arg00;
PPCODE:
    switch(SvIV(ST(1))) {
    case 0:
      arg00 = QSqlError::NoError;
      break;
    case 1:
      arg00 = QSqlError::ConnectionError;
      break;
    case 2:
      arg00 = QSqlError::StatementError;
      break;
    case 3:
      arg00 = QSqlError::TransactionError;
      break;
    case 4:
      arg00 = QSqlError::UnknownError;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QSqlError::ErrorType passed in");
    }
    (void)THIS->setType(arg00);
    XSRETURN(0);

## QString text()
void
QSqlError::text(...)
PREINIT:
PPCODE:
    QString ret = THIS->text();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## QSqlError::ErrorType type()
void
QSqlError::type(...)
PREINIT:
PPCODE:
    QSqlError::ErrorType ret = THIS->type();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
