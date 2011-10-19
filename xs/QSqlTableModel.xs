################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Sql			PACKAGE = Qt::Sql::QSqlTableModel
PROTOTYPES: DISABLE

# classname: QSqlTableModel
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QSqlTableModel(QObject * parent, QSqlDatabase db)
##  QSqlTableModel(QObject * parent, QSqlDatabase db = QSqlDatabase())
##  QSqlTableModel(QObject * parent = 0, QSqlDatabase db = QSqlDatabase())
  void
QSqlTableModel::new(...)
PREINIT:
QSqlTableModel *ret;
QObject * arg00;
QSqlDatabase arg01;
QObject * arg10;
QSqlDatabase arg11 = QSqlDatabase();
QObject * arg20 = 0;
QSqlDatabase arg21 = QSqlDatabase();
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    ret = new QSqlTableModel(arg20, arg21);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlTableModel", (void *)ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if ((sv_derived_from(ST(1), "Qt::Core::QObject") || ST(1) == &PL_sv_undef)) {
      if (sv_derived_from(ST(1), "Qt::Core::QObject")) {
        arg10 = reinterpret_cast<QObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg10 = 0;
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type Qt::Core::QObject");
    ret = new QSqlTableModel(arg10, arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlTableModel", (void *)ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if ((sv_derived_from(ST(1), "Qt::Core::QObject") || ST(1) == &PL_sv_undef) && sv_isobject(ST(2))) {
      if (sv_derived_from(ST(1), "Qt::Core::QObject")) {
        arg00 = reinterpret_cast<QObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else if (ST(1) == &PL_sv_undef) {
        arg00 = 0;
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Core::QObject");
      arg01 = *reinterpret_cast<QSqlDatabase *>(SvIV((SV*)SvRV(ST(2))));
    ret = new QSqlTableModel(arg00, arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlTableModel", (void *)ret);
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

##  ~QSqlTableModel()
void
QSqlTableModel::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## void clear()
void
QSqlTableModel::clear(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->clear();
    XSRETURN(0);
    }

## QVariant data(const QModelIndex & idx, int role)
## QVariant data(const QModelIndex & idx, int role = Qt::DisplayRole)
void
QSqlTableModel::data(...)
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

## QSqlDatabase database()
void
QSqlTableModel::database(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSqlDatabase ret = THIS->database();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
    XSRETURN(1);
    }

## QSqlTableModel::EditStrategy editStrategy()
void
QSqlTableModel::editStrategy(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSqlTableModel::EditStrategy ret = THIS->editStrategy();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## int fieldIndex(const QString & fieldName)
void
QSqlTableModel::fieldIndex(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    int ret = THIS->fieldIndex(*arg00);
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QString filter()
void
QSqlTableModel::filter(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->filter();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## QFlags<Qt::ItemFlag> flags(const QModelIndex & index)
void
QSqlTableModel::flags(...)
PREINIT:
QModelIndex * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QModelIndex")) {
      arg00 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
    QFlags<Qt::ItemFlag> ret = THIS->flags(*arg00);
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QVariant headerData(int section, Qt::Orientation orientation, int role)
## QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole)
void
QSqlTableModel::headerData(...)
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

## bool insertRecord(int row, const QSqlRecord & record)
void
QSqlTableModel::insertRecord(...)
PREINIT:
int arg00;
QSqlRecord * arg01;
PPCODE:
    if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Sql::QSqlRecord")) {
      arg00 = (int)SvIV(ST(1));
      arg01 = reinterpret_cast<QSqlRecord *>(SvIV((SV*)SvRV(ST(2))));
    bool ret = THIS->insertRecord(arg00, *arg01);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool insertRows(int row, int count, const QModelIndex & parent)
## bool insertRows(int row, int count, const QModelIndex & parent = QModelIndex())
void
QSqlTableModel::insertRows(...)
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
    bool ret = THIS->insertRows(arg10, arg11, *arg12);
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
    bool ret = THIS->insertRows(arg00, arg01, *arg02);
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

## bool isDirty(const QModelIndex & index)
void
QSqlTableModel::isDirty(...)
PREINIT:
QModelIndex * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QModelIndex")) {
      arg00 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->isDirty(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QSqlIndex primaryKey()
void
QSqlTableModel::primaryKey(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSqlIndex ret = THIS->primaryKey();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlIndex", (void *)new QSqlIndex(ret));
    XSRETURN(1);
    }

## bool removeColumns(int column, int count, const QModelIndex & parent)
## bool removeColumns(int column, int count, const QModelIndex & parent = QModelIndex())
void
QSqlTableModel::removeColumns(...)
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

## bool removeRows(int row, int count, const QModelIndex & parent)
## bool removeRows(int row, int count, const QModelIndex & parent = QModelIndex())
void
QSqlTableModel::removeRows(...)
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
    bool ret = THIS->removeRows(arg10, arg11, *arg12);
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
    bool ret = THIS->removeRows(arg00, arg01, *arg02);
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

## void revert()
void
QSqlTableModel::revert(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->revert();
    XSRETURN(0);
    }

## void revertAll()
void
QSqlTableModel::revertAll(...)
PREINIT:
PPCODE:
    if (1) {
      
    (void)THIS->revertAll();
    XSRETURN(0);
    }

## void revertRow(int row)
void
QSqlTableModel::revertRow(...)
PREINIT:
int arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    (void)THIS->revertRow(arg00);
    XSRETURN(0);
    }

## int rowCount(const QModelIndex & parent)
## int rowCount(const QModelIndex & parent = QModelIndex())
void
QSqlTableModel::rowCount(...)
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

## bool select()
void
QSqlTableModel::select(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->select();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool setData(const QModelIndex & index, const QVariant & value, int role)
## bool setData(const QModelIndex & index, const QVariant & value, int role = Qt::EditRole)
void
QSqlTableModel::setData(...)
PREINIT:
QModelIndex * arg00;
QVariant * arg01;
int arg02;
QModelIndex * arg10;
QVariant * arg11;
int arg12 = Qt::EditRole;
PPCODE:
    switch(items) {
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QModelIndex") && sv_isa(ST(2), "Qt::Core::QVariant")) {
      arg10 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(2))));
    bool ret = THIS->setData(*arg10, *arg11, arg12);
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
        if (sv_isa(ST(1), "Qt::Core::QModelIndex") && sv_isa(ST(2), "Qt::Core::QVariant") && SvIOK(ST(3))) {
      arg00 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
      arg01 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(2))));
      arg02 = (int)SvIV(ST(3));
    bool ret = THIS->setData(*arg00, *arg01, arg02);
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

## void setEditStrategy(QSqlTableModel::EditStrategy strategy)
void
QSqlTableModel::setEditStrategy(...)
PREINIT:
QSqlTableModel::EditStrategy arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (QSqlTableModel::EditStrategy)SvIV(ST(1));
    (void)THIS->setEditStrategy(arg00);
    XSRETURN(0);
    }

## void setFilter(const QString & filter)
void
QSqlTableModel::setFilter(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setFilter(*arg00);
    XSRETURN(0);
    }

## bool setRecord(int row, const QSqlRecord & record)
void
QSqlTableModel::setRecord(...)
PREINIT:
int arg00;
QSqlRecord * arg01;
PPCODE:
    if (SvIOK(ST(1)) && sv_isa(ST(2), "Qt::Sql::QSqlRecord")) {
      arg00 = (int)SvIV(ST(1));
      arg01 = reinterpret_cast<QSqlRecord *>(SvIV((SV*)SvRV(ST(2))));
    bool ret = THIS->setRecord(arg00, *arg01);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## void setSort(int column, Qt::SortOrder order)
void
QSqlTableModel::setSort(...)
PREINIT:
int arg00;
Qt::SortOrder arg01;
PPCODE:
    if (SvIOK(ST(1)) && SvIOK(ST(2))) {
      arg00 = (int)SvIV(ST(1));
      arg01 = (Qt::SortOrder)SvIV(ST(2));
    (void)THIS->setSort(arg00, arg01);
    XSRETURN(0);
    }

## void setTable(const QString & tableName)
void
QSqlTableModel::setTable(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setTable(*arg00);
    XSRETURN(0);
    }

## void sort(int column, Qt::SortOrder order)
void
QSqlTableModel::sort(...)
PREINIT:
int arg00;
Qt::SortOrder arg01;
PPCODE:
    if (SvIOK(ST(1)) && SvIOK(ST(2))) {
      arg00 = (int)SvIV(ST(1));
      arg01 = (Qt::SortOrder)SvIV(ST(2));
    (void)THIS->sort(arg00, arg01);
    XSRETURN(0);
    }

## bool submit()
void
QSqlTableModel::submit(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->submit();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool submitAll()
void
QSqlTableModel::submitAll(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->submitAll();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QString tableName()
void
QSqlTableModel::tableName(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->tableName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }




################################################################
#### 
#### ENUMS
#### 
################################################################
# EditStrategy::OnFieldChange
void
OnFieldChange()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlTableModel::OnFieldChange);
    XSRETURN(1);


# EditStrategy::OnRowChange
void
OnRowChange()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlTableModel::OnRowChange);
    XSRETURN(1);


# EditStrategy::OnManualSubmit
void
OnManualSubmit()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlTableModel::OnManualSubmit);
    XSRETURN(1);
