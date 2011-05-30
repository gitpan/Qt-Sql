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

##  QSqlError()
##  QSqlError(, , , )
##  QSqlError(, , ,  = -1)
##  QSqlError(, ,  = QSqlError::NoError,  = -1)
##  QSqlError(,  = QString(),  = QSqlError::NoError,  = -1)
##  QSqlError( = QString(),  = QString(),  = QSqlError::NoError,  = -1)
  void
QSqlError::new(...)
PREINIT:
QSqlError *ret;
QSqlError * arg00;
QString * arg10;
QString * arg11;
QSqlError::ErrorType arg12;
int arg13;
QString * arg20;
QString * arg21;
QSqlError::ErrorType arg22;
int arg23 = -1;
QString * arg30;
QString * arg31;
QSqlError::ErrorType arg32 = QSqlError::NoError;
int arg33 = -1;
QString * arg40;
const QString & arg41_ = QString();
QString * arg41 = const_cast<QString *>(&arg41_);
QSqlError::ErrorType arg42 = QSqlError::NoError;
int arg43 = -1;
const QString & arg50_ = QString();
QString * arg50 = const_cast<QString *>(&arg50_);
const QString & arg51_ = QString();
QString * arg51 = const_cast<QString *>(&arg51_);
QSqlError::ErrorType arg52 = QSqlError::NoError;
int arg53 = -1;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    ret = new QSqlError(*arg50, *arg51, arg52, arg53);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Sql::QSqlError")) {
      arg00 = reinterpret_cast<QSqlError *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QSqlError(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)ret);
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg40 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QSqlError(*arg40, *arg41, arg42, arg43);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QString")) {
      arg30 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg31 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    ret = new QSqlError(*arg30, *arg31, arg32, arg33);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 4:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QString") && SvIOK(ST(3))) {
      arg20 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg21 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
      arg22 = (QSqlError::ErrorType)SvIV(ST(3));
    ret = new QSqlError(*arg20, *arg21, arg22, arg23);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 5:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QString") && SvIOK(ST(3)) && SvIOK(ST(4))) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
      arg12 = (QSqlError::ErrorType)SvIV(ST(3));
      arg13 = (int)SvIV(ST(4));
    ret = new QSqlError(*arg10, *arg11, arg12, arg13);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)ret);
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
    if (1) {
      
    QString ret = THIS->databaseText();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## QString driverText()
void
QSqlError::driverText(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->driverText();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## bool isValid()
void
QSqlError::isValid(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isValid();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## int number()
void
QSqlError::number(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->number();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QSqlError & operator=()
void
QSqlError::operator_assign(...)
PREINIT:
QSqlError * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlError")) {
      arg00 = reinterpret_cast<QSqlError *>(SvIV((SV*)SvRV(ST(1))));
    QSqlError * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)ret);
    XSRETURN(1);
    }

## void setDatabaseText()
void
QSqlError::setDatabaseText(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setDatabaseText(*arg00);
    XSRETURN(0);
    }

## void setDriverText()
void
QSqlError::setDriverText(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setDriverText(*arg00);
    XSRETURN(0);
    }

## void setNumber()
void
QSqlError::setNumber(...)
PREINIT:
int arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    (void)THIS->setNumber(arg00);
    XSRETURN(0);
    }

## void setType()
void
QSqlError::setType(...)
PREINIT:
QSqlError::ErrorType arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (QSqlError::ErrorType)SvIV(ST(1));
    (void)THIS->setType(arg00);
    XSRETURN(0);
    }

## QString text()
void
QSqlError::text(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->text();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## QSqlError::ErrorType type()
void
QSqlError::type(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSqlError::ErrorType ret = THIS->type();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }




################################################################
#### 
#### ENUMS
#### 
################################################################
# ErrorType::NoError
void
NoError()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlError::NoError);
    XSRETURN(1);


# ErrorType::ConnectionError
void
ConnectionError()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlError::ConnectionError);
    XSRETURN(1);


# ErrorType::StatementError
void
StatementError()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlError::StatementError);
    XSRETURN(1);


# ErrorType::TransactionError
void
TransactionError()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlError::TransactionError);
    XSRETURN(1);


# ErrorType::UnknownError
void
UnknownError()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlError::UnknownError);
    XSRETURN(1);
