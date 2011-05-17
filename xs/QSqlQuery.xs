################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
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
##  QSqlQuery(const QString & query, QSqlDatabase db = QSqlDatabase())
##  QSqlQuery(const QString & query, QSqlDatabase db)
##  QSqlQuery(const QString & query = QString(), QSqlDatabase db = QSqlDatabase())
##  QSqlQuery(const QString & query, QSqlDatabase db = QSqlDatabase())
  void
QSqlQuery::new(...)
PREINIT:
QSqlQuery *ret;
QSqlResult * arg00;
QSqlDatabase arg10;
QSqlQuery * arg20;
QString * arg30;
QSqlDatabase arg31 = QSqlDatabase();
QString * arg40;
QSqlDatabase arg41;
const QString & arg50_ = QString();
QString * arg50 = const_cast<QString *>(&arg50_);
QSqlDatabase arg51 = QSqlDatabase();
QString * arg60;
QSqlDatabase arg61 = QSqlDatabase();
PPCODE:
    switch(items) {
    case 2:
      {
        if (sv_derived_from(ST(1), "Qt::Sql::QSqlResult")) {
        arg00 = reinterpret_cast<QSqlResult *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Sql::QSqlResult");
    ret = new QSqlQuery(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 3:
      {
        if (sv_isa(ST(1), "")) {
        arg40 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg40 is not of type ");
    if (sv_isobject(ST(2))) {
        arg41 = *reinterpret_cast<QSqlDatabase *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg41 is not of type Qt::Sql::QSqlDatabase");
    ret = new QSqlQuery(*arg40, arg41);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 1:
      {
        ret = new QSqlQuery(*arg50, arg51);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)ret);
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

##  ~QSqlQuery()
void
QSqlQuery::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## int at()
void
QSqlQuery::at(...)
PREINIT:
PPCODE:
    int ret = THIS->at();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

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
        if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    QVariant ret = THIS->boundValue(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QVariant(ret));
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

## void clear()
void
QSqlQuery::clear(...)
PREINIT:
PPCODE:
    (void)THIS->clear();
    XSRETURN(0);

## const QSqlDriver * driver()
void
QSqlQuery::driver(...)
PREINIT:
PPCODE:
    const QSqlDriver * ret = THIS->driver();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDriver", (void *)ret);
    XSRETURN(1);

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
        bool ret = THIS->exec();
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
    bool ret = THIS->exec(*arg10);
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

## bool execBatch(QSqlQuery::BatchExecutionMode mode = QSqlQuery::ValuesAsRows)
## bool execBatch(QSqlQuery::BatchExecutionMode mode)
void
QSqlQuery::execBatch(...)
PREINIT:
QSqlQuery::BatchExecutionMode arg00 = QSqlQuery::ValuesAsRows;
QSqlQuery::BatchExecutionMode arg10;
PPCODE:
    switch(items) {
    case 1:
      {
        bool ret = THIS->execBatch(arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
        break;
      }
    case 2:
      {
        switch(SvIV(ST(1))) {
    case 0:
      arg10 = QSqlQuery::ValuesAsRows;
      break;
    case 1:
      arg10 = QSqlQuery::ValuesAsColumns;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QSqlQuery::BatchExecutionMode passed in");
    }
    bool ret = THIS->execBatch(arg10);
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

## QString executedQuery()
void
QSqlQuery::executedQuery(...)
PREINIT:
PPCODE:
    QString ret = THIS->executedQuery();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## void finish()
void
QSqlQuery::finish(...)
PREINIT:
PPCODE:
    (void)THIS->finish();
    XSRETURN(0);

## bool first()
void
QSqlQuery::first(...)
PREINIT:
PPCODE:
    bool ret = THIS->first();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isActive()
void
QSqlQuery::isActive(...)
PREINIT:
PPCODE:
    bool ret = THIS->isActive();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isForwardOnly()
void
QSqlQuery::isForwardOnly(...)
PREINIT:
PPCODE:
    bool ret = THIS->isForwardOnly();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isNull(int field)
void
QSqlQuery::isNull(...)
PREINIT:
int arg00;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    bool ret = THIS->isNull(arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isSelect()
void
QSqlQuery::isSelect(...)
PREINIT:
PPCODE:
    bool ret = THIS->isSelect();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isValid()
void
QSqlQuery::isValid(...)
PREINIT:
PPCODE:
    bool ret = THIS->isValid();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool last()
void
QSqlQuery::last(...)
PREINIT:
PPCODE:
    bool ret = THIS->last();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QSqlError lastError()
void
QSqlQuery::lastError(...)
PREINIT:
PPCODE:
    QSqlError ret = THIS->lastError();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)new QSqlError(ret));
    XSRETURN(1);

## QVariant lastInsertId()
void
QSqlQuery::lastInsertId(...)
PREINIT:
PPCODE:
    QVariant ret = THIS->lastInsertId();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QVariant(ret));
    XSRETURN(1);

## QString lastQuery()
void
QSqlQuery::lastQuery(...)
PREINIT:
PPCODE:
    QString ret = THIS->lastQuery();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## bool next()
void
QSqlQuery::next(...)
PREINIT:
PPCODE:
    bool ret = THIS->next();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool nextResult()
void
QSqlQuery::nextResult(...)
PREINIT:
PPCODE:
    bool ret = THIS->nextResult();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## int numRowsAffected()
void
QSqlQuery::numRowsAffected(...)
PREINIT:
PPCODE:
    int ret = THIS->numRowsAffected();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## QSql::NumericalPrecisionPolicy numericalPrecisionPolicy()
void
QSqlQuery::numericalPrecisionPolicy(...)
PREINIT:
PPCODE:
    QSql::NumericalPrecisionPolicy ret = THIS->numericalPrecisionPolicy();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## QSqlQuery & operator=(const QSqlQuery & other)
void
QSqlQuery::operator_assign(...)
PREINIT:
QSqlQuery * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlQuery")) {
        arg00 = reinterpret_cast<QSqlQuery *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Sql::QSqlQuery");
    QSqlQuery * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)ret);
    XSRETURN(1);

## bool prepare(const QString & query)
void
QSqlQuery::prepare(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    bool ret = THIS->prepare(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool previous()
void
QSqlQuery::previous(...)
PREINIT:
PPCODE:
    bool ret = THIS->previous();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QSqlRecord record()
void
QSqlQuery::record(...)
PREINIT:
PPCODE:
    QSqlRecord ret = THIS->record();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlRecord", (void *)new QSqlRecord(ret));
    XSRETURN(1);

## const QSqlResult * result()
void
QSqlQuery::result(...)
PREINIT:
PPCODE:
    const QSqlResult * ret = THIS->result();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlResult", (void *)ret);
    XSRETURN(1);

## bool seek(int i, bool relative = false)
## bool seek(int i, bool relative)
void
QSqlQuery::seek(...)
PREINIT:
int arg00;
bool arg01 = false;
int arg10;
bool arg11;
PPCODE:
    switch(items) {
    case 2:
      {
        arg00 = (int)SvIV(ST(1));
    bool ret = THIS->seek(arg00, arg01);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
        break;
      }
    case 3:
      {
        arg10 = (int)SvIV(ST(1));
    arg11 = (bool)SvTRUE(ST(2));
    bool ret = THIS->seek(arg10, arg11);
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

## void setForwardOnly(bool forward)
void
QSqlQuery::setForwardOnly(...)
PREINIT:
bool arg00;
PPCODE:
    arg00 = (bool)SvTRUE(ST(1));
    (void)THIS->setForwardOnly(arg00);
    XSRETURN(0);

## void setNumericalPrecisionPolicy(QSql::NumericalPrecisionPolicy precisionPolicy)
void
QSqlQuery::setNumericalPrecisionPolicy(...)
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

## int size()
void
QSqlQuery::size(...)
PREINIT:
PPCODE:
    int ret = THIS->size();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## QVariant value(int i)
void
QSqlQuery::value(...)
PREINIT:
int arg00;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    QVariant ret = THIS->value(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QVariant(ret));
    XSRETURN(1);
