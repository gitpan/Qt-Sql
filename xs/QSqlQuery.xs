################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2012 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Sql			PACKAGE = Qt::Sql::QSqlQuery
PROTOTYPES: DISABLE

# classname: QSqlQuery
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QSqlQuery(QSqlResult * r)
##  QSqlQuery(QSqlDatabase db)
##  QSqlQuery(const QSqlQuery & other)
##  QSqlQuery(const QString & query, QSqlDatabase db)
##  QSqlQuery(const QString & query, QSqlDatabase db = QSqlDatabase())
##  QSqlQuery(const QString & query = QString(), QSqlDatabase db = QSqlDatabase())
  void
QSqlQuery::new(...)
PREINIT:
QSqlQuery *ret;
QSqlResult * arg00;
QSqlDatabase arg10;
QSqlQuery * arg20;
QString * arg30;
QSqlDatabase arg31;
QString * arg40;
QSqlDatabase arg41 = QSqlDatabase();
const QString & arg50_ = QString();
QString * arg50 = const_cast<QString *>(&arg50_);
QSqlDatabase arg51 = QSqlDatabase();
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    ret = new QSqlQuery(*arg50, arg51);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if ((sv_derived_from(ST(1), "Qt::Sql::QSqlResult") || ST(1) == &PL_sv_undef)) {
      if (sv_derived_from(ST(1), "Qt::Sql::QSqlResult")) {
        arg00 = reinterpret_cast<QSqlResult *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg00 = 0;
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Sql::QSqlResult");
    ret = new QSqlQuery(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)ret);
    XSRETURN(1);
    }
        else if (sv_isobject(ST(1))) {
      arg10 = *reinterpret_cast<QSqlDatabase *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QSqlQuery(arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)ret);
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Sql::QSqlQuery")) {
      arg20 = reinterpret_cast<QSqlQuery *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QSqlQuery(*arg20);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)ret);
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg40 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QSqlQuery(*arg40, arg41);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isobject(ST(2))) {
      arg30 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg31 = *reinterpret_cast<QSqlDatabase *>(SvIV((SV*)SvRV(ST(2))));
    ret = new QSqlQuery(*arg30, arg31);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)ret);
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

##  ~QSqlQuery()
void
QSqlQuery::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## void addBindValue(const QVariant & val, QFlags<QSql::ParamTypeFlag> type)
## void addBindValue(const QVariant & val, QFlags<QSql::ParamTypeFlag> type = QSql::In)
void
QSqlQuery::addBindValue(...)
PREINIT:
QVariant * arg00;
QFlags<QSql::ParamTypeFlag> arg01;
QVariant * arg10;
QFlags<QSql::ParamTypeFlag> arg11 = QSql::In;
PPCODE:
    switch(items) {
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QVariant")) {
      arg10 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->addBindValue(*arg10, arg11);
    XSRETURN(0);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QVariant") && SvIOK(ST(2))) {
      arg00 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = QFlags<QSql::ParamTypeFlag>((QSql::ParamTypeFlag)SvIV(ST(2)));
    (void)THIS->addBindValue(*arg00, arg01);
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

## int at()
void
QSqlQuery::at(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->at();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## void bindValue(const QString & placeholder, const QVariant & val, QFlags<QSql::ParamTypeFlag> type)
## void bindValue(const QString & placeholder, const QVariant & val, QFlags<QSql::ParamTypeFlag> type = QSql::In)
## void bindValue(int pos, const QVariant & val, QFlags<QSql::ParamTypeFlag> type)
## void bindValue(int pos, const QVariant & val, QFlags<QSql::ParamTypeFlag> type = QSql::In)
void
QSqlQuery::bindValue(...)
PREINIT:
QString * arg00;
QVariant * arg01;
QFlags<QSql::ParamTypeFlag> arg02;
QString * arg10;
QVariant * arg11;
QFlags<QSql::ParamTypeFlag> arg12 = QSql::In;
int arg20;
QVariant * arg21;
QFlags<QSql::ParamTypeFlag> arg22;
int arg30;
QVariant * arg31;
QFlags<QSql::ParamTypeFlag> arg32 = QSql::In;
PPCODE:
    switch(items) {
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QVariant")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(2))));
    (void)THIS->bindValue(*arg10, *arg11, arg12);
    XSRETURN(0);
    }
        else if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Core::QVariant")) {
      arg30 = (int)SvIV(ST(1));
      arg31 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(2))));
    (void)THIS->bindValue(arg30, *arg31, arg32);
    XSRETURN(0);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 4:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QVariant") && SvIOK(ST(3))) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(2))));
      arg02 = QFlags<QSql::ParamTypeFlag>((QSql::ParamTypeFlag)SvIV(ST(3)));
    (void)THIS->bindValue(*arg00, *arg01, arg02);
    XSRETURN(0);
    }
        else if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Core::QVariant") && SvIOK(ST(3))) {
      arg20 = (int)SvIV(ST(1));
      arg21 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(2))));
      arg22 = QFlags<QSql::ParamTypeFlag>((QSql::ParamTypeFlag)SvIV(ST(3)));
    (void)THIS->bindValue(arg20, *arg21, arg22);
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

## QVariant boundValue(const QString & placeholder)
## QVariant boundValue(int pos)
void
QSqlQuery::boundValue(...)
PREINIT:
QString * arg00;
int arg10;
PPCODE:
    switch(items) {
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    QVariant ret = THIS->boundValue(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QVariant", (void *)new QVariant(ret));
    XSRETURN(1);
    }
        else if (SvIOK(ST(1))) {
      arg10 = (int)SvIV(ST(1));
    QVariant ret = THIS->boundValue(arg10);
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

## QMap<QString,QVariant> boundValues()
void
QSqlQuery::boundValues(...)
PREINIT:
PPCODE:
    if (1) {
      
    QMap<QString,QVariant> ret = THIS->boundValues();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::Template::T000", (void *)new QMap<QString,QVariant>(ret));
    XSRETURN(1);
    }

## void clear()
void
QSqlQuery::clear(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->clear();
    XSRETURN(0);
    }

## const QSqlDriver * driver()
void
QSqlQuery::driver(...)
PREINIT:
PPCODE:
    if (1) {
      
    const QSqlDriver * ret = THIS->driver();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDriver", (void *)ret);
    XSRETURN(1);
    }

## bool exec()
## bool exec(const QString & query)
void
QSqlQuery::exec(...)
PREINIT:
QString * arg10;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    bool ret = THIS->exec();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->exec(*arg10);
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

## bool execBatch(QSqlQuery::BatchExecutionMode mode)
## bool execBatch(QSqlQuery::BatchExecutionMode mode = QSqlQuery::ValuesAsRows)
void
QSqlQuery::execBatch(...)
PREINIT:
QSqlQuery::BatchExecutionMode arg00;
QSqlQuery::BatchExecutionMode arg10 = QSqlQuery::ValuesAsRows;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    bool ret = THIS->execBatch(arg10);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (SvIOK(ST(1))) {
      arg00 = (QSqlQuery::BatchExecutionMode)SvIV(ST(1));
    bool ret = THIS->execBatch(arg00);
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

## QString executedQuery()
void
QSqlQuery::executedQuery(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->executedQuery();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## void finish()
void
QSqlQuery::finish(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->finish();
    XSRETURN(0);
    }

## bool first()
void
QSqlQuery::first(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->first();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isActive()
void
QSqlQuery::isActive(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isActive();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isForwardOnly()
void
QSqlQuery::isForwardOnly(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isForwardOnly();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isNull(int field)
void
QSqlQuery::isNull(...)
PREINIT:
int arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    bool ret = THIS->isNull(arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isSelect()
void
QSqlQuery::isSelect(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isSelect();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isValid()
void
QSqlQuery::isValid(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isValid();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool last()
void
QSqlQuery::last(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->last();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QSqlError lastError()
void
QSqlQuery::lastError(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSqlError ret = THIS->lastError();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)new QSqlError(ret));
    XSRETURN(1);
    }

## QVariant lastInsertId()
void
QSqlQuery::lastInsertId(...)
PREINIT:
PPCODE:
    if (1) {
      
    QVariant ret = THIS->lastInsertId();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QVariant", (void *)new QVariant(ret));
    XSRETURN(1);
    }

## QString lastQuery()
void
QSqlQuery::lastQuery(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->lastQuery();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## bool next()
void
QSqlQuery::next(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->next();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool nextResult()
void
QSqlQuery::nextResult(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->nextResult();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## int numRowsAffected()
void
QSqlQuery::numRowsAffected(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->numRowsAffected();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QSql::NumericalPrecisionPolicy numericalPrecisionPolicy()
void
QSqlQuery::numericalPrecisionPolicy(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSql::NumericalPrecisionPolicy ret = THIS->numericalPrecisionPolicy();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QSqlQuery & operator=(const QSqlQuery & other)
void
QSqlQuery::operator_assign(...)
PREINIT:
QSqlQuery * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlQuery")) {
      arg00 = reinterpret_cast<QSqlQuery *>(SvIV((SV*)SvRV(ST(1))));
    QSqlQuery * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)ret);
    XSRETURN(1);
    }

## bool prepare(const QString & query)
void
QSqlQuery::prepare(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->prepare(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool previous()
void
QSqlQuery::previous(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->previous();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QSqlRecord record()
void
QSqlQuery::record(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSqlRecord ret = THIS->record();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlRecord", (void *)new QSqlRecord(ret));
    XSRETURN(1);
    }

## const QSqlResult * result()
void
QSqlQuery::result(...)
PREINIT:
PPCODE:
    if (1) {
      
    const QSqlResult * ret = THIS->result();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlResult", (void *)ret);
    XSRETURN(1);
    }

## bool seek(int i, bool relative)
## bool seek(int i, bool relative = false)
void
QSqlQuery::seek(...)
PREINIT:
int arg00;
bool arg01;
int arg10;
bool arg11 = false;
PPCODE:
    switch(items) {
      case 2:
      {
        if (SvIOK(ST(1))) {
      arg10 = (int)SvIV(ST(1));
    bool ret = THIS->seek(arg10, arg11);
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
        if (SvIOK(ST(1)) && 1) {
      arg00 = (int)SvIV(ST(1));
      arg01 = (bool)SvTRUE(ST(2));
    bool ret = THIS->seek(arg00, arg01);
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

## void setForwardOnly(bool forward)
void
QSqlQuery::setForwardOnly(...)
PREINIT:
bool arg00;
PPCODE:
    if (1) {
      arg00 = (bool)SvTRUE(ST(1));
    (void)THIS->setForwardOnly(arg00);
    XSRETURN(0);
    }

## void setNumericalPrecisionPolicy(QSql::NumericalPrecisionPolicy precisionPolicy)
void
QSqlQuery::setNumericalPrecisionPolicy(...)
PREINIT:
QSql::NumericalPrecisionPolicy arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (QSql::NumericalPrecisionPolicy)SvIV(ST(1));
    (void)THIS->setNumericalPrecisionPolicy(arg00);
    XSRETURN(0);
    }

## int size()
void
QSqlQuery::size(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->size();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QVariant value(int i)
void
QSqlQuery::value(...)
PREINIT:
int arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    QVariant ret = THIS->value(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QVariant", (void *)new QVariant(ret));
    XSRETURN(1);
    }




################################################################
#### 
#### ENUMS
#### 
################################################################
# BatchExecutionMode::ValuesAsRows
void
ValuesAsRows()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlQuery::ValuesAsRows);
    XSRETURN(1);


# BatchExecutionMode::ValuesAsColumns
void
ValuesAsColumns()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlQuery::ValuesAsColumns);
    XSRETURN(1);
