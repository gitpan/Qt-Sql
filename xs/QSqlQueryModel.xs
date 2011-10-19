################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Sql			PACKAGE = Qt::Sql::QSqlQueryModel
PROTOTYPES: DISABLE

# classname: QSqlQueryModel
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QSqlQueryModel(QObject * parent)
##  QSqlQueryModel(QObject * parent = 0)
  void
QSqlQueryModel::new(...)
PREINIT:
QSqlQueryModel *ret;
QObject * arg00;
QObject * arg10 = 0;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    ret = new QSqlQueryModel(arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQueryModel", (void *)ret);
    XSRETURN(1);
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
    ret = new QSqlQueryModel(arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQueryModel", (void *)ret);
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

##  ~QSqlQueryModel()
void
QSqlQueryModel::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## bool canFetchMore(const QModelIndex & parent)
## bool canFetchMore(const QModelIndex & parent = QModelIndex())
void
QSqlQueryModel::canFetchMore(...)
PREINIT:
QModelIndex * arg00;
const QModelIndex & arg10_ = QModelIndex();
QModelIndex * arg10 = const_cast<QModelIndex *>(&arg10_);
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    bool ret = THIS->canFetchMore(*arg10);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QModelIndex")) {
      arg00 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->canFetchMore(*arg00);
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

## void clear()
void
QSqlQueryModel::clear(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->clear();
    XSRETURN(0);
    }

## int columnCount(const QModelIndex & parent)
## int columnCount(const QModelIndex & parent = QModelIndex())
void
QSqlQueryModel::columnCount(...)
PREINIT:
QModelIndex * arg00;
const QModelIndex & arg10_ = QModelIndex();
QModelIndex * arg10 = const_cast<QModelIndex *>(&arg10_);
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    int ret = THIS->columnCount(*arg10);
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QModelIndex")) {
      arg00 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
    int ret = THIS->columnCount(*arg00);
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
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

## QVariant data(const QModelIndex & item, int role)
## QVariant data(const QModelIndex & item, int role = Qt::DisplayRole)
void
QSqlQueryModel::data(...)
PREINIT:
QModelIndex * arg00;
int arg01;
QModelIndex * arg10;
int arg11 = Qt::DisplayRole;
PPCODE:
    switch(items) {
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QModelIndex")) {
      arg10 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
    QVariant ret = THIS->data(*arg10, arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QVariant", (void *)new QVariant(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QModelIndex") && SvIOK(ST(2))) {
      arg00 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = (int)SvIV(ST(2));
    QVariant ret = THIS->data(*arg00, arg01);
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

## void fetchMore(const QModelIndex & parent)
## void fetchMore(const QModelIndex & parent = QModelIndex())
void
QSqlQueryModel::fetchMore(...)
PREINIT:
QModelIndex * arg00;
const QModelIndex & arg10_ = QModelIndex();
QModelIndex * arg10 = const_cast<QModelIndex *>(&arg10_);
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    (void)THIS->fetchMore(*arg10);
    XSRETURN(0);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QModelIndex")) {
      arg00 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->fetchMore(*arg00);
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

## QVariant headerData(int section, Qt::Orientation orientation, int role)
## QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole)
void
QSqlQueryModel::headerData(...)
PREINIT:
int arg00;
Qt::Orientation arg01;
int arg02;
int arg10;
Qt::Orientation arg11;
int arg12 = Qt::DisplayRole;
PPCODE:
    switch(items) {
      case 3:
      {
        if (SvIOK(ST(1)) && SvIOK(ST(2))) {
      arg10 = (int)SvIV(ST(1));
      arg11 = (Qt::Orientation)SvIV(ST(2));
    QVariant ret = THIS->headerData(arg10, arg11, arg12);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QVariant", (void *)new QVariant(ret));
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 4:
      {
        if (SvIOK(ST(1)) && SvIOK(ST(2)) && SvIOK(ST(3))) {
      arg00 = (int)SvIV(ST(1));
      arg01 = (Qt::Orientation)SvIV(ST(2));
      arg02 = (int)SvIV(ST(3));
    QVariant ret = THIS->headerData(arg00, arg01, arg02);
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

## bool insertColumns(int column, int count, const QModelIndex & parent)
## bool insertColumns(int column, int count, const QModelIndex & parent = QModelIndex())
void
QSqlQueryModel::insertColumns(...)
PREINIT:
int arg00;
int arg01;
QModelIndex * arg02;
int arg10;
int arg11;
const QModelIndex & arg12_ = QModelIndex();
QModelIndex * arg12 = const_cast<QModelIndex *>(&arg12_);
PPCODE:
    switch(items) {
      case 3:
      {
        if (SvIOK(ST(1)) && SvIOK(ST(2))) {
      arg10 = (int)SvIV(ST(1));
      arg11 = (int)SvIV(ST(2));
    bool ret = THIS->insertColumns(arg10, arg11, *arg12);
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
        if (SvIOK(ST(1)) && SvIOK(ST(2)) && sv_isa(ST(3), "Qt::Core::QModelIndex")) {
      arg00 = (int)SvIV(ST(1));
      arg01 = (int)SvIV(ST(2));
      arg02 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(3))));
    bool ret = THIS->insertColumns(arg00, arg01, *arg02);
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

## QSqlError lastError()
void
QSqlQueryModel::lastError(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSqlError ret = THIS->lastError();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlError", (void *)new QSqlError(ret));
    XSRETURN(1);
    }

## QSqlQuery query()
void
QSqlQueryModel::query(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSqlQuery ret = THIS->query();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlQuery", (void *)new QSqlQuery(ret));
    XSRETURN(1);
    }

## QSqlRecord record()
## QSqlRecord record(int row)
void
QSqlQueryModel::record(...)
PREINIT:
int arg10;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    QSqlRecord ret = THIS->record();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlRecord", (void *)new QSqlRecord(ret));
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (SvIOK(ST(1))) {
      arg10 = (int)SvIV(ST(1));
    QSqlRecord ret = THIS->record(arg10);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlRecord", (void *)new QSqlRecord(ret));
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

## bool removeColumns(int column, int count, const QModelIndex & parent)
## bool removeColumns(int column, int count, const QModelIndex & parent = QModelIndex())
void
QSqlQueryModel::removeColumns(...)
PREINIT:
int arg00;
int arg01;
QModelIndex * arg02;
int arg10;
int arg11;
const QModelIndex & arg12_ = QModelIndex();
QModelIndex * arg12 = const_cast<QModelIndex *>(&arg12_);
PPCODE:
    switch(items) {
      case 3:
      {
        if (SvIOK(ST(1)) && SvIOK(ST(2))) {
      arg10 = (int)SvIV(ST(1));
      arg11 = (int)SvIV(ST(2));
    bool ret = THIS->removeColumns(arg10, arg11, *arg12);
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
        if (SvIOK(ST(1)) && SvIOK(ST(2)) && sv_isa(ST(3), "Qt::Core::QModelIndex")) {
      arg00 = (int)SvIV(ST(1));
      arg01 = (int)SvIV(ST(2));
      arg02 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(3))));
    bool ret = THIS->removeColumns(arg00, arg01, *arg02);
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

## int rowCount(const QModelIndex & parent)
## int rowCount(const QModelIndex & parent = QModelIndex())
void
QSqlQueryModel::rowCount(...)
PREINIT:
QModelIndex * arg00;
const QModelIndex & arg10_ = QModelIndex();
QModelIndex * arg10 = const_cast<QModelIndex *>(&arg10_);
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    int ret = THIS->rowCount(*arg10);
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Core::QModelIndex")) {
      arg00 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
    int ret = THIS->rowCount(*arg00);
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
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

## bool setHeaderData(int section, Qt::Orientation orientation, const QVariant & value, int role)
## bool setHeaderData(int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole)
void
QSqlQueryModel::setHeaderData(...)
PREINIT:
int arg00;
Qt::Orientation arg01;
QVariant * arg02;
int arg03;
int arg10;
Qt::Orientation arg11;
QVariant * arg12;
int arg13 = Qt::EditRole;
PPCODE:
    switch(items) {
      case 4:
      {
        if (SvIOK(ST(1)) && SvIOK(ST(2)) && sv_isa(ST(3), "Qt::Core::QVariant")) {
      arg10 = (int)SvIV(ST(1));
      arg11 = (Qt::Orientation)SvIV(ST(2));
      arg12 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(3))));
    bool ret = THIS->setHeaderData(arg10, arg11, *arg12, arg13);
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
        if (SvIOK(ST(1)) && SvIOK(ST(2)) && sv_isa(ST(3), "Qt::Core::QVariant") && SvIOK(ST(4))) {
      arg00 = (int)SvIV(ST(1));
      arg01 = (Qt::Orientation)SvIV(ST(2));
      arg02 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(3))));
      arg03 = (int)SvIV(ST(4));
    bool ret = THIS->setHeaderData(arg00, arg01, *arg02, arg03);
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

## void setQuery(const QSqlQuery & query)
## void setQuery(const QString & query, const QSqlDatabase & db)
## void setQuery(const QString & query, const QSqlDatabase & db = QSqlDatabase())
void
QSqlQueryModel::setQuery(...)
PREINIT:
QSqlQuery * arg00;
QString * arg10;
QSqlDatabase * arg11;
QString * arg20;
const QSqlDatabase & arg21_ = QSqlDatabase();
QSqlDatabase * arg21 = const_cast<QSqlDatabase *>(&arg21_);
PPCODE:
    switch(items) {
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Sql::QSqlQuery")) {
      arg00 = reinterpret_cast<QSqlQuery *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setQuery(*arg00);
    XSRETURN(0);
    }
        else if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg20 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setQuery(*arg20, *arg21);
    XSRETURN(0);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Sql::QSqlDatabase")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = reinterpret_cast<QSqlDatabase *>(SvIV((SV*)SvRV(ST(2))));
    (void)THIS->setQuery(*arg10, *arg11);
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
