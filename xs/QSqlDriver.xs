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

##  QSqlDriver(QObject * parent = 0)
##  QSqlDriver(QObject * parent)
  void
QSqlDriver::new(...)
PREINIT:
QSqlDriver *ret;
QObject * arg00 = 0;
QObject * arg10;
PPCODE:
    switch(items) {
    case 1:
      {
        Perl_croak(aTHX_ "Trying to create abstract class object");
        break;
      }
    case 2:
      {
        if (sv_derived_from(ST(1), "")) {
        arg10 = reinterpret_cast<QObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type ");
    Perl_croak(aTHX_ "Trying to create abstract class object");
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
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
    bool ret = THIS->beginTransaction();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## void close()
void
QSqlDriver::close(...)
PREINIT:
PPCODE:
    (void)THIS->close();
    XSRETURN(0);

## bool commitTransaction()
void
QSqlDriver::commitTransaction(...)
PREINIT:
PPCODE:
    bool ret = THIS->commitTransaction();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QSqlResult * createResult()
void
QSqlDriver::createResult(...)
PREINIT:
PPCODE:
    QSqlResult * ret = THIS->createResult();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlResult", (void *)ret);
    XSRETURN(1);

## QString escapeIdentifier(const QString & identifier, QSqlDriver::IdentifierType type)
void
QSqlDriver::escapeIdentifier(...)
PREINIT:
QString * arg00;
QSqlDriver::IdentifierType arg01;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    switch(SvIV(ST(2))) {
    case 0:
      arg01 = QSqlDriver::FieldName;
      break;
    case 1:
      arg01 = QSqlDriver::TableName;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QSqlDriver::IdentifierType passed in");
    }
    QString ret = THIS->escapeIdentifier(*arg00, arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## QString formatValue(const QSqlField & field, bool trimStrings = false)
## QString formatValue(const QSqlField & field, bool trimStrings)
void
QSqlDriver::formatValue(...)
PREINIT:
QSqlField * arg00;
bool arg01 = false;
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
    QString ret = THIS->formatValue(*arg00, arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);
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
    QString ret = THIS->formatValue(*arg10, arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

## QVariant handle()
void
QSqlDriver::handle(...)
PREINIT:
PPCODE:
    QVariant ret = THIS->handle();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QVariant(ret));
    XSRETURN(1);

## bool hasFeature(QSqlDriver::DriverFeature f)
void
QSqlDriver::hasFeature(...)
PREINIT:
QSqlDriver::DriverFeature arg00;
PPCODE:
    switch(SvIV(ST(1))) {
    case 0:
      arg00 = QSqlDriver::Transactions;
      break;
    case 1:
      arg00 = QSqlDriver::QuerySize;
      break;
    case 2:
      arg00 = QSqlDriver::BLOB;
      break;
    case 3:
      arg00 = QSqlDriver::Unicode;
      break;
    case 4:
      arg00 = QSqlDriver::PreparedQueries;
      break;
    case 5:
      arg00 = QSqlDriver::NamedPlaceholders;
      break;
    case 6:
      arg00 = QSqlDriver::PositionalPlaceholders;
      break;
    case 7:
      arg00 = QSqlDriver::LastInsertId;
      break;
    case 8:
      arg00 = QSqlDriver::BatchOperations;
      break;
    case 9:
      arg00 = QSqlDriver::SimpleLocking;
      break;
    case 10:
      arg00 = QSqlDriver::LowPrecisionNumbers;
      break;
    case 11:
      arg00 = QSqlDriver::EventNotifications;
      break;
    case 12:
      arg00 = QSqlDriver::FinishQuery;
      break;
    case 13:
      arg00 = QSqlDriver::MultipleResultSets;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QSqlDriver::DriverFeature passed in");
    }
    bool ret = THIS->hasFeature(arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isIdentifierEscaped(const QString & identifier, QSqlDriver::IdentifierType type)
void
QSqlDriver::isIdentifierEscaped(...)
PREINIT:
QString * arg00;
QSqlDriver::IdentifierType arg01;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    switch(SvIV(ST(2))) {
    case 0:
      arg01 = QSqlDriver::FieldName;
      break;
    case 1:
      arg01 = QSqlDriver::TableName;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QSqlDriver::IdentifierType passed in");
    }
    bool ret = THIS->isIdentifierEscaped(*arg00, arg01);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isOpen()
void
QSqlDriver::isOpen(...)
PREINIT:
PPCODE:
    bool ret = THIS->isOpen();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isOpenError()
void
QSqlDriver::isOpenError(...)
PREINIT:
PPCODE:
    bool ret = THIS->isOpenError();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QSqlError lastError()
void
QSqlDriver::lastError(...)
PREINIT:
PPCODE:
    QSqlError ret = THIS->lastError();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)new QSqlError(ret));
    XSRETURN(1);

## QSql::NumericalPrecisionPolicy numericalPrecisionPolicy()
void
QSqlDriver::numericalPrecisionPolicy(...)
PREINIT:
PPCODE:
    QSql::NumericalPrecisionPolicy ret = THIS->numericalPrecisionPolicy();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## bool open(const QString & db, const QString & user, const QString & password, const QString & host, int port, const QString & connOpts = QString())
## bool open(const QString & db, const QString & user, const QString & password, const QString & host, int port, const QString & connOpts)
## bool open(const QString & db, const QString & user, const QString & password, const QString & host, int port = -1, const QString & connOpts = QString())
## bool open(const QString & db, const QString & user, const QString & password, const QString & host, int port, const QString & connOpts = QString())
## bool open(const QString & db, const QString & user, const QString & password, const QString & host = QString(), int port = -1, const QString & connOpts = QString())
## bool open(const QString & db, const QString & user, const QString & password, const QString & host, int port = -1, const QString & connOpts = QString())
## bool open(const QString & db, const QString & user, const QString & password = QString(), const QString & host = QString(), int port = -1, const QString & connOpts = QString())
## bool open(const QString & db, const QString & user, const QString & password, const QString & host = QString(), int port = -1, const QString & connOpts = QString())
## bool open(const QString & db, const QString & user = QString(), const QString & password = QString(), const QString & host = QString(), int port = -1, const QString & connOpts = QString())
## bool open(const QString & db, const QString & user, const QString & password = QString(), const QString & host = QString(), int port = -1, const QString & connOpts = QString())
void
QSqlDriver::open(...)
PREINIT:
QString * arg00;
QString * arg01;
QString * arg02;
QString * arg03;
int arg04;
const QString & arg05_ = QString();
QString * arg05 = const_cast<QString *>(&arg05_);
QString * arg10;
QString * arg11;
QString * arg12;
QString * arg13;
int arg14;
QString * arg15;
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
QString * arg33;
int arg34;
const QString & arg35_ = QString();
QString * arg35 = const_cast<QString *>(&arg35_);
QString * arg40;
QString * arg41;
QString * arg42;
const QString & arg43_ = QString();
QString * arg43 = const_cast<QString *>(&arg43_);
int arg44 = -1;
const QString & arg45_ = QString();
QString * arg45 = const_cast<QString *>(&arg45_);
QString * arg50;
QString * arg51;
QString * arg52;
QString * arg53;
int arg54 = -1;
const QString & arg55_ = QString();
QString * arg55 = const_cast<QString *>(&arg55_);
QString * arg60;
QString * arg61;
const QString & arg62_ = QString();
QString * arg62 = const_cast<QString *>(&arg62_);
const QString & arg63_ = QString();
QString * arg63 = const_cast<QString *>(&arg63_);
int arg64 = -1;
const QString & arg65_ = QString();
QString * arg65 = const_cast<QString *>(&arg65_);
QString * arg70;
QString * arg71;
QString * arg72;
const QString & arg73_ = QString();
QString * arg73 = const_cast<QString *>(&arg73_);
int arg74 = -1;
const QString & arg75_ = QString();
QString * arg75 = const_cast<QString *>(&arg75_);
QString * arg80;
const QString & arg81_ = QString();
QString * arg81 = const_cast<QString *>(&arg81_);
const QString & arg82_ = QString();
QString * arg82 = const_cast<QString *>(&arg82_);
const QString & arg83_ = QString();
QString * arg83 = const_cast<QString *>(&arg83_);
int arg84 = -1;
const QString & arg85_ = QString();
QString * arg85 = const_cast<QString *>(&arg85_);
QString * arg90;
QString * arg91;
const QString & arg92_ = QString();
QString * arg92 = const_cast<QString *>(&arg92_);
const QString & arg93_ = QString();
QString * arg93 = const_cast<QString *>(&arg93_);
int arg94 = -1;
const QString & arg95_ = QString();
QString * arg95 = const_cast<QString *>(&arg95_);
PPCODE:
    switch(items) {
    case 6:
      {
        if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    if (sv_isa(ST(2), "")) {
        arg01 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type ");
    if (sv_isa(ST(3), "")) {
        arg02 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(3))));
    }
    else
        Perl_croak(aTHX_ "arg02 is not of type ");
    if (sv_isa(ST(4), "")) {
        arg03 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(4))));
    }
    else
        Perl_croak(aTHX_ "arg03 is not of type ");
    arg04 = (int)SvIV(ST(5));
    bool ret = THIS->open(*arg00, *arg01, *arg02, *arg03, arg04, *arg05);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
        break;
      }
    case 7:
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
    if (sv_isa(ST(3), "")) {
        arg12 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(3))));
    }
    else
        Perl_croak(aTHX_ "arg12 is not of type ");
    if (sv_isa(ST(4), "")) {
        arg13 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(4))));
    }
    else
        Perl_croak(aTHX_ "arg13 is not of type ");
    arg14 = (int)SvIV(ST(5));
    if (sv_isa(ST(6), "")) {
        arg15 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(6))));
    }
    else
        Perl_croak(aTHX_ "arg15 is not of type ");
    bool ret = THIS->open(*arg10, *arg11, *arg12, *arg13, arg14, *arg15);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
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
    if (sv_isa(ST(3), "")) {
        arg22 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(3))));
    }
    else
        Perl_croak(aTHX_ "arg22 is not of type ");
    if (sv_isa(ST(4), "")) {
        arg23 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(4))));
    }
    else
        Perl_croak(aTHX_ "arg23 is not of type ");
    bool ret = THIS->open(*arg20, *arg21, *arg22, *arg23, arg24, *arg25);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
        break;
      }
    case 4:
      {
        if (sv_isa(ST(1), "")) {
        arg40 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg40 is not of type ");
    if (sv_isa(ST(2), "")) {
        arg41 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg41 is not of type ");
    if (sv_isa(ST(3), "")) {
        arg42 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(3))));
    }
    else
        Perl_croak(aTHX_ "arg42 is not of type ");
    bool ret = THIS->open(*arg40, *arg41, *arg42, *arg43, arg44, *arg45);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
        break;
      }
    case 3:
      {
        if (sv_isa(ST(1), "")) {
        arg60 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg60 is not of type ");
    if (sv_isa(ST(2), "")) {
        arg61 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg61 is not of type ");
    bool ret = THIS->open(*arg60, *arg61, *arg62, *arg63, arg64, *arg65);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
        break;
      }
    case 2:
      {
        if (sv_isa(ST(1), "")) {
        arg80 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg80 is not of type ");
    bool ret = THIS->open(*arg80, *arg81, *arg82, *arg83, arg84, *arg85);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

## QSqlIndex primaryIndex(const QString & tableName)
void
QSqlDriver::primaryIndex(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    QSqlIndex ret = THIS->primaryIndex(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlIndex", (void *)new QSqlIndex(ret));
    XSRETURN(1);

## QSqlRecord record(const QString & tableName)
void
QSqlDriver::record(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    QSqlRecord ret = THIS->record(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlRecord", (void *)new QSqlRecord(ret));
    XSRETURN(1);

## bool rollbackTransaction()
void
QSqlDriver::rollbackTransaction(...)
PREINIT:
PPCODE:
    bool ret = THIS->rollbackTransaction();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## void setNumericalPrecisionPolicy(QSql::NumericalPrecisionPolicy precisionPolicy)
void
QSqlDriver::setNumericalPrecisionPolicy(...)
PREINIT:
QSql::NumericalPrecisionPolicy arg00;
PPCODE:
    switch(SvIV(ST(1))) {
    case 0:
      arg00 = QSql::LowPrecisionInt32;
      break;
    case 1:
      arg00 = QSql::LowPrecisionInt64;
      break;
    case 2:
      arg00 = QSql::LowPrecisionDouble;
      break;
    case 3:
      arg00 = QSql::HighPrecision;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QSql::NumericalPrecisionPolicy passed in");
    }
    (void)THIS->setNumericalPrecisionPolicy(arg00);
    XSRETURN(0);

## QString sqlStatement(QSqlDriver::StatementType type, const QString & tableName, const QSqlRecord & rec, bool preparedStatement)
void
QSqlDriver::sqlStatement(...)
PREINIT:
QSqlDriver::StatementType arg00;
QString * arg01;
QSqlRecord * arg02;
bool arg03;
PPCODE:
    switch(SvIV(ST(1))) {
    case 0:
      arg00 = QSqlDriver::WhereStatement;
      break;
    case 1:
      arg00 = QSqlDriver::SelectStatement;
      break;
    case 2:
      arg00 = QSqlDriver::UpdateStatement;
      break;
    case 3:
      arg00 = QSqlDriver::InsertStatement;
      break;
    case 4:
      arg00 = QSqlDriver::DeleteStatement;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QSqlDriver::StatementType passed in");
    }
    if (sv_isa(ST(2), "")) {
        arg01 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type ");
    if (sv_isa(ST(3), "Qt::Sql::QSqlRecord")) {
        arg02 = reinterpret_cast<QSqlRecord *>(SvIV((SV*)SvRV(ST(3))));
    }
    else
        Perl_croak(aTHX_ "arg02 is not of type Qt::Sql::QSqlRecord");
    arg03 = (bool)SvTRUE(ST(4));
    QString ret = THIS->sqlStatement(arg00, *arg01, *arg02, arg03);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## QString stripDelimiters(const QString & identifier, QSqlDriver::IdentifierType type)
void
QSqlDriver::stripDelimiters(...)
PREINIT:
QString * arg00;
QSqlDriver::IdentifierType arg01;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    switch(SvIV(ST(2))) {
    case 0:
      arg01 = QSqlDriver::FieldName;
      break;
    case 1:
      arg01 = QSqlDriver::TableName;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QSqlDriver::IdentifierType passed in");
    }
    QString ret = THIS->stripDelimiters(*arg00, arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## bool subscribeToNotification(const QString & name)
void
QSqlDriver::subscribeToNotification(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    bool ret = THIS->subscribeToNotification(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QStringList subscribedToNotifications()
void
QSqlDriver::subscribedToNotifications(...)
PREINIT:
PPCODE:
    QStringList ret = THIS->subscribedToNotifications();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QStringList(ret));
    XSRETURN(1);

## QStringList tables(QSql::TableType tableType)
void
QSqlDriver::tables(...)
PREINIT:
QSql::TableType arg00;
PPCODE:
    switch(SvIV(ST(1))) {
    case 0:
      arg00 = QSql::Tables;
      break;
    case 1:
      arg00 = QSql::SystemTables;
      break;
    case 2:
      arg00 = QSql::Views;
      break;
    case 3:
      arg00 = QSql::AllTables;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QSql::TableType passed in");
    }
    QStringList ret = THIS->tables(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QStringList(ret));
    XSRETURN(1);

## bool unsubscribeFromNotification(const QString & name)
void
QSqlDriver::unsubscribeFromNotification(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    bool ret = THIS->unsubscribeFromNotification(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
