################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Sql			PACKAGE = Qt::Sql::QSqlDriver
PROTOTYPES: DISABLE

# classname: QSqlDriver
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QSqlDriver()
##  QSqlDriver( = 0)
  void
QSqlDriver::new(...)
PREINIT:
QSqlDriver *ret;
QObject * arg00;
QObject * arg10 = 0;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    Perl_croak(aTHX_ "Trying to create abstract class object");
    }
        break;
      }
      case 2:
      {
        if ((sv_derived_from(ST(1), "Qt::Core::QObject") || ST(1) == &PL_sv_undef)) {
      if (sv_derived_from(ST(1), "Qt::Core::QObject")) {
        arg00 = reinterpret_cast<QObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg00 = 0;
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Core::QObject");
    Perl_croak(aTHX_ "Trying to create abstract class object");
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      default:
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
    }

##  ~QSqlDriver()
void
QSqlDriver::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## bool beginTransaction()
void
QSqlDriver::beginTransaction(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->beginTransaction();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## void close()
void
QSqlDriver::close(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->close();
    XSRETURN(0);
    }

## bool commitTransaction()
void
QSqlDriver::commitTransaction(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->commitTransaction();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QSqlResult * createResult()
void
QSqlDriver::createResult(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSqlResult * ret = THIS->createResult();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlResult", (void *)ret);
    XSRETURN(1);
    }

## QString escapeIdentifier(, )
void
QSqlDriver::escapeIdentifier(...)
PREINIT:
QString * arg00;
QSqlDriver::IdentifierType arg01;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString") && SvIOK(ST(2))) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = (QSqlDriver::IdentifierType)SvIV(ST(2));
    QString ret = THIS->escapeIdentifier(*arg00, arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## QString formatValue(, )
## QString formatValue(,  = false)
void
QSqlDriver::formatValue(...)
PREINIT:
QSqlField * arg00;
bool arg01;
QSqlField * arg10;
bool arg11 = false;
PPCODE:
    switch(items) {
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Sql::QSqlField")) {
      arg10 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(1))));
    QString ret = THIS->formatValue(*arg10, arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Sql::QSqlField") && 1) {
      arg00 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = (bool)SvTRUE(ST(2));
    QString ret = THIS->formatValue(*arg00, arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
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

## QVariant handle()
void
QSqlDriver::handle(...)
PREINIT:
PPCODE:
    if (1) {
      
    QVariant ret = THIS->handle();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QVariant", (void *)new QVariant(ret));
    XSRETURN(1);
    }

## bool hasFeature()
void
QSqlDriver::hasFeature(...)
PREINIT:
QSqlDriver::DriverFeature arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (QSqlDriver::DriverFeature)SvIV(ST(1));
    bool ret = THIS->hasFeature(arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isIdentifierEscaped(, )
void
QSqlDriver::isIdentifierEscaped(...)
PREINIT:
QString * arg00;
QSqlDriver::IdentifierType arg01;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString") && SvIOK(ST(2))) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = (QSqlDriver::IdentifierType)SvIV(ST(2));
    bool ret = THIS->isIdentifierEscaped(*arg00, arg01);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isOpen()
void
QSqlDriver::isOpen(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isOpen();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isOpenError()
void
QSqlDriver::isOpenError(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isOpenError();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QSqlError lastError()
void
QSqlDriver::lastError(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSqlError ret = THIS->lastError();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)new QSqlError(ret));
    XSRETURN(1);
    }

## QSql::NumericalPrecisionPolicy numericalPrecisionPolicy()
void
QSqlDriver::numericalPrecisionPolicy(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSql::NumericalPrecisionPolicy ret = THIS->numericalPrecisionPolicy();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## bool open(, , , , , )
## bool open(, , , , ,  = QString())
## bool open(, , , ,  = -1,  = QString())
## bool open(, , ,  = QString(),  = -1,  = QString())
## bool open(, ,  = QString(),  = QString(),  = -1,  = QString())
## bool open(,  = QString(),  = QString(),  = QString(),  = -1,  = QString())
void
QSqlDriver::open(...)
PREINIT:
QString * arg00;
QString * arg01;
QString * arg02;
QString * arg03;
int arg04;
QString * arg05;
QString * arg10;
QString * arg11;
QString * arg12;
QString * arg13;
int arg14;
const QString & arg15_ = QString();
QString * arg15 = const_cast<QString *>(&arg15_);
QString * arg20;
QString * arg21;
QString * arg22;
QString * arg23;
int arg24 = -1;
const QString & arg25_ = QString();
QString * arg25 = const_cast<QString *>(&arg25_);
QString * arg30;
QString * arg31;
QString * arg32;
const QString & arg33_ = QString();
QString * arg33 = const_cast<QString *>(&arg33_);
int arg34 = -1;
const QString & arg35_ = QString();
QString * arg35 = const_cast<QString *>(&arg35_);
QString * arg40;
QString * arg41;
const QString & arg42_ = QString();
QString * arg42 = const_cast<QString *>(&arg42_);
const QString & arg43_ = QString();
QString * arg43 = const_cast<QString *>(&arg43_);
int arg44 = -1;
const QString & arg45_ = QString();
QString * arg45 = const_cast<QString *>(&arg45_);
QString * arg50;
const QString & arg51_ = QString();
QString * arg51 = const_cast<QString *>(&arg51_);
const QString & arg52_ = QString();
QString * arg52 = const_cast<QString *>(&arg52_);
const QString & arg53_ = QString();
QString * arg53 = const_cast<QString *>(&arg53_);
int arg54 = -1;
const QString & arg55_ = QString();
QString * arg55 = const_cast<QString *>(&arg55_);
PPCODE:
    switch(items) {
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg50 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->open(*arg50, *arg51, *arg52, *arg53, arg54, *arg55);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QString")) {
      arg40 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg41 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    bool ret = THIS->open(*arg40, *arg41, *arg42, *arg43, arg44, *arg45);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 4:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QString") && sv_isa(ST(3), "Qt::Core::QString")) {
      arg30 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg31 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
      arg32 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(3))));
    bool ret = THIS->open(*arg30, *arg31, *arg32, *arg33, arg34, *arg35);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 5:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QString") && sv_isa(ST(3), "Qt::Core::QString") && sv_isa(ST(4), "Qt::Core::QString")) {
      arg20 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg21 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
      arg22 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(3))));
      arg23 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(4))));
    bool ret = THIS->open(*arg20, *arg21, *arg22, *arg23, arg24, *arg25);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 6:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QString") && sv_isa(ST(3), "Qt::Core::QString") && sv_isa(ST(4), "Qt::Core::QString") && SvIOK(ST(5))) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
      arg12 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(3))));
      arg13 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(4))));
      arg14 = (int)SvIV(ST(5));
    bool ret = THIS->open(*arg10, *arg11, *arg12, *arg13, arg14, *arg15);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 7:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QString") && sv_isa(ST(3), "Qt::Core::QString") && sv_isa(ST(4), "Qt::Core::QString") && SvIOK(ST(5)) && sv_isa(ST(6), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
      arg02 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(3))));
      arg03 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(4))));
      arg04 = (int)SvIV(ST(5));
      arg05 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(6))));
    bool ret = THIS->open(*arg00, *arg01, *arg02, *arg03, arg04, *arg05);
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

## QSqlIndex primaryIndex()
void
QSqlDriver::primaryIndex(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    QSqlIndex ret = THIS->primaryIndex(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlIndex", (void *)new QSqlIndex(ret));
    XSRETURN(1);
    }

## QSqlRecord record()
void
QSqlDriver::record(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    QSqlRecord ret = THIS->record(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlRecord", (void *)new QSqlRecord(ret));
    XSRETURN(1);
    }

## bool rollbackTransaction()
void
QSqlDriver::rollbackTransaction(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->rollbackTransaction();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## void setNumericalPrecisionPolicy()
void
QSqlDriver::setNumericalPrecisionPolicy(...)
PREINIT:
QSql::NumericalPrecisionPolicy arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (QSql::NumericalPrecisionPolicy)SvIV(ST(1));
    (void)THIS->setNumericalPrecisionPolicy(arg00);
    XSRETURN(0);
    }

## QString sqlStatement(, , , )
void
QSqlDriver::sqlStatement(...)
PREINIT:
QSqlDriver::StatementType arg00;
QString * arg01;
QSqlRecord * arg02;
bool arg03;
PPCODE:
    if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Core::QString") && sv_isa(ST(3), "Qt::Sql::QSqlRecord") && 1) {
      arg00 = (QSqlDriver::StatementType)SvIV(ST(1));
      arg01 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
      arg02 = reinterpret_cast<QSqlRecord *>(SvIV((SV*)SvRV(ST(3))));
      arg03 = (bool)SvTRUE(ST(4));
    QString ret = THIS->sqlStatement(arg00, *arg01, *arg02, arg03);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## QString stripDelimiters(, )
void
QSqlDriver::stripDelimiters(...)
PREINIT:
QString * arg00;
QSqlDriver::IdentifierType arg01;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString") && SvIOK(ST(2))) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = (QSqlDriver::IdentifierType)SvIV(ST(2));
    QString ret = THIS->stripDelimiters(*arg00, arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## bool subscribeToNotification()
void
QSqlDriver::subscribeToNotification(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->subscribeToNotification(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QStringList subscribedToNotifications()
void
QSqlDriver::subscribedToNotifications(...)
PREINIT:
PPCODE:
    if (1) {
      
    QStringList ret = THIS->subscribedToNotifications();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QStringList", (void *)new QStringList(ret));
    XSRETURN(1);
    }

## QStringList tables()
void
QSqlDriver::tables(...)
PREINIT:
QSql::TableType arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (QSql::TableType)SvIV(ST(1));
    QStringList ret = THIS->tables(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QStringList", (void *)new QStringList(ret));
    XSRETURN(1);
    }

## bool unsubscribeFromNotification()
void
QSqlDriver::unsubscribeFromNotification(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->unsubscribeFromNotification(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }




################################################################
#### 
#### ENUMS
#### 
################################################################
# DriverFeature::Transactions
void
Transactions()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::Transactions);
    XSRETURN(1);


# DriverFeature::QuerySize
void
QuerySize()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::QuerySize);
    XSRETURN(1);


# DriverFeature::BLOB
void
BLOB()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::BLOB);
    XSRETURN(1);


# DriverFeature::Unicode
void
Unicode()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::Unicode);
    XSRETURN(1);


# DriverFeature::PreparedQueries
void
PreparedQueries()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::PreparedQueries);
    XSRETURN(1);


# DriverFeature::NamedPlaceholders
void
NamedPlaceholders()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::NamedPlaceholders);
    XSRETURN(1);


# DriverFeature::PositionalPlaceholders
void
PositionalPlaceholders()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::PositionalPlaceholders);
    XSRETURN(1);


# DriverFeature::LastInsertId
void
LastInsertId()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::LastInsertId);
    XSRETURN(1);


# DriverFeature::BatchOperations
void
BatchOperations()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::BatchOperations);
    XSRETURN(1);


# DriverFeature::SimpleLocking
void
SimpleLocking()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::SimpleLocking);
    XSRETURN(1);


# DriverFeature::LowPrecisionNumbers
void
LowPrecisionNumbers()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::LowPrecisionNumbers);
    XSRETURN(1);


# DriverFeature::EventNotifications
void
EventNotifications()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::EventNotifications);
    XSRETURN(1);


# DriverFeature::FinishQuery
void
FinishQuery()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::FinishQuery);
    XSRETURN(1);


# DriverFeature::MultipleResultSets
void
MultipleResultSets()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::MultipleResultSets);
    XSRETURN(1);


# StatementType::WhereStatement
void
WhereStatement()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::WhereStatement);
    XSRETURN(1);


# StatementType::SelectStatement
void
SelectStatement()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::SelectStatement);
    XSRETURN(1);


# StatementType::UpdateStatement
void
UpdateStatement()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::UpdateStatement);
    XSRETURN(1);


# StatementType::InsertStatement
void
InsertStatement()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::InsertStatement);
    XSRETURN(1);


# StatementType::DeleteStatement
void
DeleteStatement()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::DeleteStatement);
    XSRETURN(1);


# IdentifierType::FieldName
void
FieldName()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::FieldName);
    XSRETURN(1);


# IdentifierType::TableName
void
TableName()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlDriver::TableName);
    XSRETURN(1);
