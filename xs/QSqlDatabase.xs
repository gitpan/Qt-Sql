################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2012 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
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
        if (1) {
      
    ret = new QSqlDatabase();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Sql::QSqlDatabase")) {
      arg10 = reinterpret_cast<QSqlDatabase *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QSqlDatabase(*arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)ret);
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

##  ~QSqlDatabase()
void
QSqlDatabase::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## static QSqlDatabase addDatabase(const QString & type, const QString & connectionName)
## static QSqlDatabase addDatabase(const QString & type, const QString & connectionName = QLatin1String(QSqlDatabase::defaultConnection))
## static QSqlDatabase addDatabase(QSqlDriver * driver, const QString & connectionName)
## static QSqlDatabase addDatabase(QSqlDriver * driver, const QString & connectionName = QLatin1String(QSqlDatabase::defaultConnection))
void
QSqlDatabase::addDatabase(...)
PREINIT:
QString * arg00;
QString * arg01;
QString * arg10;
const QString & arg11_ = QLatin1String(QSqlDatabase::defaultConnection);
QString * arg11 = const_cast<QString *>(&arg11_);
QSqlDriver * arg20;
QString * arg21;
QSqlDriver * arg30;
const QString & arg31_ = QLatin1String(QSqlDatabase::defaultConnection);
QString * arg31 = const_cast<QString *>(&arg31_);
PPCODE:
    switch(items) {
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    QSqlDatabase ret = THIS->addDatabase(*arg10, *arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
    XSRETURN(1);
    }
        else if ((sv_derived_from(ST(1), "Qt::Sql::QSqlDriver") || ST(1) == &PL_sv_undef)) {
      if (sv_derived_from(ST(1), "Qt::Sql::QSqlDriver")) {
        arg30 = reinterpret_cast<QSqlDriver *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg30 = 0;
    }
    else
        Perl_croak(aTHX_ "arg30 is not of type Qt::Sql::QSqlDriver");
    QSqlDatabase ret = THIS->addDatabase(arg30, *arg31);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    QSqlDatabase ret = THIS->addDatabase(*arg00, *arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
    XSRETURN(1);
    }
        else if ((sv_derived_from(ST(1), "Qt::Sql::QSqlDriver") || ST(1) == &PL_sv_undef) && sv_isa(ST(2), "Qt::Core::QString")) {
      if (sv_derived_from(ST(1), "Qt::Sql::QSqlDriver")) {
        arg20 = reinterpret_cast<QSqlDriver *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg20 = 0;
    }
    else
        Perl_croak(aTHX_ "arg20 is not of type Qt::Sql::QSqlDriver");
      arg21 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    QSqlDatabase ret = THIS->addDatabase(arg20, *arg21);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
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

## static QSqlDatabase cloneDatabase(const QSqlDatabase & other, const QString & connectionName)
void
QSqlDatabase::cloneDatabase(...)
PREINIT:
QSqlDatabase * arg00;
QString * arg01;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlDatabase") && sv_isa(ST(2), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QSqlDatabase *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    QSqlDatabase ret = THIS->cloneDatabase(*arg00, *arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
    XSRETURN(1);
    }

## void close()
void
QSqlDatabase::close(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->close();
    XSRETURN(0);
    }

## bool commit()
void
QSqlDatabase::commit(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->commit();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QString connectOptions()
void
QSqlDatabase::connectOptions(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->connectOptions();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## QString connectionName()
void
QSqlDatabase::connectionName(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->connectionName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## static QStringList connectionNames()
void
QSqlDatabase::connectionNames(...)
PREINIT:
PPCODE:
    if (1) {
      
    QStringList ret = THIS->connectionNames();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QStringList", (void *)new QStringList(ret));
    XSRETURN(1);
    }

## static bool contains(const QString & connectionName)
## static bool contains(const QString & connectionName = QLatin1String(QSqlDatabase::defaultConnection))
void
QSqlDatabase::contains(...)
PREINIT:
QString * arg00;
const QString & arg10_ = QLatin1String(QSqlDatabase::defaultConnection);
QString * arg10 = const_cast<QString *>(&arg10_);
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    bool ret = THIS->contains(*arg10);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->contains(*arg00);
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

## static QSqlDatabase database(const QString & connectionName, bool open)
## static QSqlDatabase database(const QString & connectionName, bool open = true)
## static QSqlDatabase database(const QString & connectionName = QLatin1String(QSqlDatabase::defaultConnection), bool open = true)
void
QSqlDatabase::database(...)
PREINIT:
QString * arg00;
bool arg01;
QString * arg10;
bool arg11 = true;
const QString & arg20_ = QLatin1String(QSqlDatabase::defaultConnection);
QString * arg20 = const_cast<QString *>(&arg20_);
bool arg21 = true;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    QSqlDatabase ret = THIS->database(*arg20, arg21);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    QSqlDatabase ret = THIS->database(*arg10, arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && 1) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = (bool)SvTRUE(ST(2));
    QSqlDatabase ret = THIS->database(*arg00, arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
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

## QString databaseName()
void
QSqlDatabase::databaseName(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->databaseName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## QSqlDriver * driver()
void
QSqlDatabase::driver(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSqlDriver * ret = THIS->driver();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDriver", (void *)ret);
    XSRETURN(1);
    }

## QString driverName()
void
QSqlDatabase::driverName(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->driverName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## static QStringList drivers()
void
QSqlDatabase::drivers(...)
PREINIT:
PPCODE:
    if (1) {
      
    QStringList ret = THIS->drivers();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QStringList", (void *)new QStringList(ret));
    XSRETURN(1);
    }

## QSqlQuery exec(const QString & query)
## QSqlQuery exec(const QString & query = QString())
void
QSqlDatabase::exec(...)
PREINIT:
QString * arg00;
const QString & arg10_ = QString();
QString * arg10 = const_cast<QString *>(&arg10_);
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    QSqlQuery ret = THIS->exec(*arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)new QSqlQuery(ret));
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    QSqlQuery ret = THIS->exec(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)new QSqlQuery(ret));
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

## QString hostName()
void
QSqlDatabase::hostName(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->hostName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## static bool isDriverAvailable(const QString & name)
void
QSqlDatabase::isDriverAvailable(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->isDriverAvailable(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isOpen()
void
QSqlDatabase::isOpen(...)
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
QSqlDatabase::isOpenError(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isOpenError();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isValid()
void
QSqlDatabase::isValid(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isValid();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QSqlError lastError()
void
QSqlDatabase::lastError(...)
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
QSqlDatabase::numericalPrecisionPolicy(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSql::NumericalPrecisionPolicy ret = THIS->numericalPrecisionPolicy();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

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
        if (1) {
      
    bool ret = THIS->open();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QString")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
    bool ret = THIS->open(*arg10, *arg11);
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

## QSqlDatabase & operator=(const QSqlDatabase & other)
void
QSqlDatabase::operator_assign(...)
PREINIT:
QSqlDatabase * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlDatabase")) {
      arg00 = reinterpret_cast<QSqlDatabase *>(SvIV((SV*)SvRV(ST(1))));
    QSqlDatabase * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)ret);
    XSRETURN(1);
    }

## QString password()
void
QSqlDatabase::password(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->password();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## int port()
void
QSqlDatabase::port(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->port();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QSqlIndex primaryIndex(const QString & tablename)
void
QSqlDatabase::primaryIndex(...)
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

## QSqlRecord record(const QString & tablename)
void
QSqlDatabase::record(...)
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

## static void registerSqlDriver(const QString & name, QSqlDriverCreatorBase * creator)
void
QSqlDatabase::registerSqlDriver(...)
PREINIT:
QString * arg00;
QSqlDriverCreatorBase * arg01;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString") && (sv_derived_from(ST(2), "Qt::Sql::QSqlDriverCreatorBase") || ST(2) == &PL_sv_undef)) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      if (sv_derived_from(ST(2), "Qt::Sql::QSqlDriverCreatorBase")) {
        arg01 = reinterpret_cast<QSqlDriverCreatorBase *>(SvIV((SV*)SvRV(ST(2))));
    }
    else if (ST(2) == &PL_sv_undef) {
        arg01 = 0;
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type Qt::Sql::QSqlDriverCreatorBase");
    (void)THIS->registerSqlDriver(*arg00, arg01);
    XSRETURN(0);
    }

## static void removeDatabase(const QString & connectionName)
void
QSqlDatabase::removeDatabase(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->removeDatabase(*arg00);
    XSRETURN(0);
    }

## bool rollback()
void
QSqlDatabase::rollback(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->rollback();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## void setConnectOptions(const QString & options)
## void setConnectOptions(const QString & options = QString())
void
QSqlDatabase::setConnectOptions(...)
PREINIT:
QString * arg00;
const QString & arg10_ = QString();
QString * arg10 = const_cast<QString *>(&arg10_);
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    (void)THIS->setConnectOptions(*arg10);
    XSRETURN(0);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setConnectOptions(*arg00);
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

## void setDatabaseName(const QString & name)
void
QSqlDatabase::setDatabaseName(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setDatabaseName(*arg00);
    XSRETURN(0);
    }

## void setHostName(const QString & host)
void
QSqlDatabase::setHostName(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setHostName(*arg00);
    XSRETURN(0);
    }

## void setNumericalPrecisionPolicy(QSql::NumericalPrecisionPolicy precisionPolicy)
void
QSqlDatabase::setNumericalPrecisionPolicy(...)
PREINIT:
QSql::NumericalPrecisionPolicy arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (QSql::NumericalPrecisionPolicy)SvIV(ST(1));
    (void)THIS->setNumericalPrecisionPolicy(arg00);
    XSRETURN(0);
    }

## void setPassword(const QString & password)
void
QSqlDatabase::setPassword(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setPassword(*arg00);
    XSRETURN(0);
    }

## void setPort(int p)
void
QSqlDatabase::setPort(...)
PREINIT:
int arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    (void)THIS->setPort(arg00);
    XSRETURN(0);
    }

## void setUserName(const QString & name)
void
QSqlDatabase::setUserName(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setUserName(*arg00);
    XSRETURN(0);
    }

## QStringList tables(QSql::TableType type)
## QStringList tables(QSql::TableType type = QSql::Tables)
void
QSqlDatabase::tables(...)
PREINIT:
QSql::TableType arg00;
QSql::TableType arg10 = QSql::Tables;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    QStringList ret = THIS->tables(arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QStringList", (void *)new QStringList(ret));
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (SvIOK(ST(1))) {
      arg00 = (QSql::TableType)SvIV(ST(1));
    QStringList ret = THIS->tables(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QStringList", (void *)new QStringList(ret));
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

## bool transaction()
void
QSqlDatabase::transaction(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->transaction();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QString userName()
void
QSqlDatabase::userName(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->userName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }
