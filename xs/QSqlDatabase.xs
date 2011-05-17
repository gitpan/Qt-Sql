################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Sql			PACKAGE = Qt::Sql::QSqlDatabase
PROTOTYPES: DISABLE

# classname: QSqlDatabase
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QSqlDatabase()
##  QSqlDatabase(const QSqlDatabase & other)
  void
QSqlDatabase::new(...)
PREINIT:
QSqlDatabase *ret;
QSqlDatabase * arg10;
PPCODE:
    switch(items) {
    case 1:
      {
        ret = new QSqlDatabase();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 2:
      {
        if (sv_isa(ST(1), "Qt::Sql::QSqlDatabase")) {
        arg10 = reinterpret_cast<QSqlDatabase *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type Qt::Sql::QSqlDatabase");
    ret = new QSqlDatabase(*arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)ret);
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

##  ~QSqlDatabase()
void
QSqlDatabase::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## static QSqlDatabase addDatabase(const QString & type, const QString & connectionName = QLatin1String(QSqlDatabase::defaultConnection))
## static QSqlDatabase addDatabase(const QString & type, const QString & connectionName)
## static QSqlDatabase addDatabase(QSqlDriver * driver, const QString & connectionName = QLatin1String(QSqlDatabase::defaultConnection))
## static QSqlDatabase addDatabase(QSqlDriver * driver, const QString & connectionName)
void
QSqlDatabase::addDatabase(...)
PREINIT:
QString * arg00;
const QString & arg01_ = QLatin1String(QSqlDatabase::defaultConnection);
QString * arg01 = const_cast<QString *>(&arg01_);
QString * arg10;
QString * arg11;
QSqlDriver * arg20;
const QString & arg21_ = QLatin1String(QSqlDatabase::defaultConnection);
QString * arg21 = const_cast<QString *>(&arg21_);
QSqlDriver * arg30;
QString * arg31;
PPCODE:
    switch(items) {
    case 2:
      {
        if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    QSqlDatabase ret = THIS->addDatabase(*arg00, *arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
    XSRETURN(1);
        break;
      }
    case 3:
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
    QSqlDatabase ret = THIS->addDatabase(*arg10, *arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

## static QSqlDatabase cloneDatabase(const QSqlDatabase & other, const QString & connectionName)
void
QSqlDatabase::cloneDatabase(...)
PREINIT:
QSqlDatabase * arg00;
QString * arg01;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlDatabase")) {
        arg00 = reinterpret_cast<QSqlDatabase *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Sql::QSqlDatabase");
    if (sv_isa(ST(2), "")) {
        arg01 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type ");
    QSqlDatabase ret = THIS->cloneDatabase(*arg00, *arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
    XSRETURN(1);

## void close()
void
QSqlDatabase::close(...)
PREINIT:
PPCODE:
    (void)THIS->close();
    XSRETURN(0);

## bool commit()
void
QSqlDatabase::commit(...)
PREINIT:
PPCODE:
    bool ret = THIS->commit();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QString connectOptions()
void
QSqlDatabase::connectOptions(...)
PREINIT:
PPCODE:
    QString ret = THIS->connectOptions();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## QString connectionName()
void
QSqlDatabase::connectionName(...)
PREINIT:
PPCODE:
    QString ret = THIS->connectionName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## static QStringList connectionNames()
void
QSqlDatabase::connectionNames(...)
PREINIT:
PPCODE:
    QStringList ret = THIS->connectionNames();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QStringList(ret));
    XSRETURN(1);

## static bool contains(const QString & connectionName = QLatin1String(QSqlDatabase::defaultConnection))
## static bool contains(const QString & connectionName)
void
QSqlDatabase::contains(...)
PREINIT:
const QString & arg00_ = QLatin1String(QSqlDatabase::defaultConnection);
QString * arg00 = const_cast<QString *>(&arg00_);
QString * arg10;
PPCODE:
    switch(items) {
    case 1:
      {
        bool ret = THIS->contains(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
        break;
      }
    case 2:
      {
        if (sv_isa(ST(1), "")) {
        arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type ");
    bool ret = THIS->contains(*arg10);
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

## static QSqlDatabase database(const QString & connectionName, bool open = true)
## static QSqlDatabase database(const QString & connectionName, bool open)
## static QSqlDatabase database(const QString & connectionName = QLatin1String(QSqlDatabase::defaultConnection), bool open = true)
## static QSqlDatabase database(const QString & connectionName, bool open = true)
void
QSqlDatabase::database(...)
PREINIT:
QString * arg00;
bool arg01 = true;
QString * arg10;
bool arg11;
const QString & arg20_ = QLatin1String(QSqlDatabase::defaultConnection);
QString * arg20 = const_cast<QString *>(&arg20_);
bool arg21 = true;
QString * arg30;
bool arg31 = true;
PPCODE:
    switch(items) {
    case 2:
      {
        if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    QSqlDatabase ret = THIS->database(*arg00, arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
    XSRETURN(1);
        break;
      }
    case 3:
      {
        if (sv_isa(ST(1), "")) {
        arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type ");
    arg11 = (bool)SvTRUE(ST(2));
    QSqlDatabase ret = THIS->database(*arg10, arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
    XSRETURN(1);
        break;
      }
    case 1:
      {
        QSqlDatabase ret = THIS->database(*arg20, arg21);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

## QString databaseName()
void
QSqlDatabase::databaseName(...)
PREINIT:
PPCODE:
    QString ret = THIS->databaseName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## QSqlDriver * driver()
void
QSqlDatabase::driver(...)
PREINIT:
PPCODE:
    QSqlDriver * ret = THIS->driver();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDriver", (void *)ret);
    XSRETURN(1);

## QString driverName()
void
QSqlDatabase::driverName(...)
PREINIT:
PPCODE:
    QString ret = THIS->driverName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## static QStringList drivers()
void
QSqlDatabase::drivers(...)
PREINIT:
PPCODE:
    QStringList ret = THIS->drivers();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QStringList(ret));
    XSRETURN(1);

## QSqlQuery exec(const QString & query = QString())
## QSqlQuery exec(const QString & query)
void
QSqlDatabase::exec(...)
PREINIT:
const QString & arg00_ = QString();
QString * arg00 = const_cast<QString *>(&arg00_);
QString * arg10;
PPCODE:
    switch(items) {
    case 1:
      {
        QSqlQuery ret = THIS->exec(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)new QSqlQuery(ret));
    XSRETURN(1);
        break;
      }
    case 2:
      {
        if (sv_isa(ST(1), "")) {
        arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type ");
    QSqlQuery ret = THIS->exec(*arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)new QSqlQuery(ret));
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

## QString hostName()
void
QSqlDatabase::hostName(...)
PREINIT:
PPCODE:
    QString ret = THIS->hostName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## static bool isDriverAvailable(const QString & name)
void
QSqlDatabase::isDriverAvailable(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    bool ret = THIS->isDriverAvailable(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isOpen()
void
QSqlDatabase::isOpen(...)
PREINIT:
PPCODE:
    bool ret = THIS->isOpen();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isOpenError()
void
QSqlDatabase::isOpenError(...)
PREINIT:
PPCODE:
    bool ret = THIS->isOpenError();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isValid()
void
QSqlDatabase::isValid(...)
PREINIT:
PPCODE:
    bool ret = THIS->isValid();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QSqlError lastError()
void
QSqlDatabase::lastError(...)
PREINIT:
PPCODE:
    QSqlError ret = THIS->lastError();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)new QSqlError(ret));
    XSRETURN(1);

## QSql::NumericalPrecisionPolicy numericalPrecisionPolicy()
void
QSqlDatabase::numericalPrecisionPolicy(...)
PREINIT:
PPCODE:
    QSql::NumericalPrecisionPolicy ret = THIS->numericalPrecisionPolicy();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## bool open()
## bool open(const QString & user, const QString & password)
void
QSqlDatabase::open(...)
PREINIT:
QString * arg10;
QString * arg11;
PPCODE:
    switch(items) {
    case 1:
      {
        bool ret = THIS->open();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
        break;
      }
    case 3:
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
    bool ret = THIS->open(*arg10, *arg11);
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

## QSqlDatabase & operator=(const QSqlDatabase & other)
void
QSqlDatabase::operator_assign(...)
PREINIT:
QSqlDatabase * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlDatabase")) {
        arg00 = reinterpret_cast<QSqlDatabase *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Sql::QSqlDatabase");
    QSqlDatabase * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)ret);
    XSRETURN(1);

## QString password()
void
QSqlDatabase::password(...)
PREINIT:
PPCODE:
    QString ret = THIS->password();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## int port()
void
QSqlDatabase::port(...)
PREINIT:
PPCODE:
    int ret = THIS->port();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## QSqlIndex primaryIndex(const QString & tablename)
void
QSqlDatabase::primaryIndex(...)
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

## QSqlRecord record(const QString & tablename)
void
QSqlDatabase::record(...)
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

## static void registerSqlDriver(const QString & name, QSqlDriverCreatorBase * creator)
void
QSqlDatabase::registerSqlDriver(...)
PREINIT:
QString * arg00;
QSqlDriverCreatorBase * arg01;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    if (sv_derived_from(ST(2), "Qt::Sql::QSqlDriverCreatorBase")) {
        arg01 = reinterpret_cast<QSqlDriverCreatorBase *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type Qt::Sql::QSqlDriverCreatorBase");
    (void)THIS->registerSqlDriver(*arg00, arg01);
    XSRETURN(0);

## static void removeDatabase(const QString & connectionName)
void
QSqlDatabase::removeDatabase(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    (void)THIS->removeDatabase(*arg00);
    XSRETURN(0);

## bool rollback()
void
QSqlDatabase::rollback(...)
PREINIT:
PPCODE:
    bool ret = THIS->rollback();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## void setConnectOptions(const QString & options = QString())
## void setConnectOptions(const QString & options)
void
QSqlDatabase::setConnectOptions(...)
PREINIT:
const QString & arg00_ = QString();
QString * arg00 = const_cast<QString *>(&arg00_);
QString * arg10;
PPCODE:
    switch(items) {
    case 1:
      {
        (void)THIS->setConnectOptions(*arg00);
    XSRETURN(0);
        break;
      }
    case 2:
      {
        if (sv_isa(ST(1), "")) {
        arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type ");
    (void)THIS->setConnectOptions(*arg10);
    XSRETURN(0);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

## void setDatabaseName(const QString & name)
void
QSqlDatabase::setDatabaseName(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    (void)THIS->setDatabaseName(*arg00);
    XSRETURN(0);

## void setHostName(const QString & host)
void
QSqlDatabase::setHostName(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    (void)THIS->setHostName(*arg00);
    XSRETURN(0);

## void setNumericalPrecisionPolicy(QSql::NumericalPrecisionPolicy precisionPolicy)
void
QSqlDatabase::setNumericalPrecisionPolicy(...)
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

## void setPassword(const QString & password)
void
QSqlDatabase::setPassword(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    (void)THIS->setPassword(*arg00);
    XSRETURN(0);

## void setPort(int p)
void
QSqlDatabase::setPort(...)
PREINIT:
int arg00;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    (void)THIS->setPort(arg00);
    XSRETURN(0);

## void setUserName(const QString & name)
void
QSqlDatabase::setUserName(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    (void)THIS->setUserName(*arg00);
    XSRETURN(0);

## QStringList tables(QSql::TableType type = QSql::Tables)
## QStringList tables(QSql::TableType type)
void
QSqlDatabase::tables(...)
PREINIT:
QSql::TableType arg00 = QSql::Tables;
QSql::TableType arg10;
PPCODE:
    switch(items) {
    case 1:
      {
        QStringList ret = THIS->tables(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QStringList(ret));
    XSRETURN(1);
        break;
      }
    case 2:
      {
        switch(SvIV(ST(1))) {
    case 0:
      arg10 = QSql::Tables;
      break;
    case 1:
      arg10 = QSql::SystemTables;
      break;
    case 2:
      arg10 = QSql::Views;
      break;
    case 3:
      arg10 = QSql::AllTables;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QSql::TableType passed in");
    }
    QStringList ret = THIS->tables(arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QStringList(ret));
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

## bool transaction()
void
QSqlDatabase::transaction(...)
PREINIT:
PPCODE:
    bool ret = THIS->transaction();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QString userName()
void
QSqlDatabase::userName(...)
PREINIT:
PPCODE:
    QString ret = THIS->userName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);
