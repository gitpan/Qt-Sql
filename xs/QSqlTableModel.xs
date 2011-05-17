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

##  QSqlTableModel(QObject * parent, QSqlDatabase db = QSqlDatabase())
##  QSqlTableModel(QObject * parent, QSqlDatabase db)
##  QSqlTableModel(QObject * parent = 0, QSqlDatabase db = QSqlDatabase())
##  QSqlTableModel(QObject * parent, QSqlDatabase db = QSqlDatabase())
  void
QSqlTableModel::new(...)
PREINIT:
QSqlTableModel *ret;
QObject * arg00;
QSqlDatabase arg01 = QSqlDatabase();
QObject * arg10;
QSqlDatabase arg11;
QObject * arg20 = 0;
QSqlDatabase arg21 = QSqlDatabase();
QObject * arg30;
QSqlDatabase arg31 = QSqlDatabase();
PPCODE:
    switch(items) {
    case 2:
      {
        if (sv_derived_from(ST(1), "")) {
        arg00 = reinterpret_cast<QObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    ret = new QSqlTableModel(arg00, arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlTableModel", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 3:
      {
        if (sv_derived_from(ST(1), "")) {
        arg10 = reinterpret_cast<QObject *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type ");
    if (sv_isobject(ST(2))) {
        arg11 = *reinterpret_cast<QSqlDatabase *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg11 is not of type Qt::Sql::QSqlDatabase");
    ret = new QSqlTableModel(arg10, arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlTableModel", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 1:
      {
        ret = new QSqlTableModel(arg20, arg21);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlTableModel", (void *)ret);
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
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
    (void)THIS->clear();
    XSRETURN(0);

## QVariant data(const QModelIndex & idx, int role = Qt::DisplayRole)
## QVariant data(const QModelIndex & idx, int role)
void
QSqlTableModel::data(...)
PREINIT:
QModelIndex * arg00;
int arg01 = Qt::DisplayRole;
QModelIndex * arg10;
int arg11;
PPCODE:
    switch(items) {
    case 2:
      {
        if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    QVariant ret = THIS->data(*arg00, arg01);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QVariant(ret));
    XSRETURN(1);
        break;
      }
    case 3:
      {
        if (sv_isa(ST(1), "")) {
        arg10 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type ");
    arg11 = (int)SvIV(ST(2));
    QVariant ret = THIS->data(*arg10, arg11);
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

## QSqlDatabase database()
void
QSqlTableModel::database(...)
PREINIT:
PPCODE:
    QSqlDatabase ret = THIS->database();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDatabase", (void *)new QSqlDatabase(ret));
    XSRETURN(1);

## QSqlTableModel::EditStrategy editStrategy()
void
QSqlTableModel::editStrategy(...)
PREINIT:
PPCODE:
    QSqlTableModel::EditStrategy ret = THIS->editStrategy();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## int fieldIndex(const QString & fieldName)
void
QSqlTableModel::fieldIndex(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    int ret = THIS->fieldIndex(*arg00);
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## QString filter()
void
QSqlTableModel::filter(...)
PREINIT:
PPCODE:
    QString ret = THIS->filter();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole)
## QVariant headerData(int section, Qt::Orientation orientation, int role)
void
QSqlTableModel::headerData(...)
PREINIT:
int arg00;
Qt::Orientation arg01;
int arg02 = Qt::DisplayRole;
int arg10;
Qt::Orientation arg11;
int arg12;
PPCODE:
    switch(items) {
    case 3:
      {
        arg00 = (int)SvIV(ST(1));
    switch(SvIV(ST(2))) {
    case 0:
      arg01 = Qt::Horizontal;
      break;
    case 1:
      arg01 = Qt::Vertical;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type Qt::Orientation passed in");
    }
    QVariant ret = THIS->headerData(arg00, arg01, arg02);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QVariant(ret));
    XSRETURN(1);
        break;
      }
    case 4:
      {
        arg10 = (int)SvIV(ST(1));
    switch(SvIV(ST(2))) {
    case 0:
      arg11 = Qt::Horizontal;
      break;
    case 1:
      arg11 = Qt::Vertical;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type Qt::Orientation passed in");
    }
    arg12 = (int)SvIV(ST(3));
    QVariant ret = THIS->headerData(arg10, arg11, arg12);
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

## bool insertRecord(int row, const QSqlRecord & record)
void
QSqlTableModel::insertRecord(...)
PREINIT:
int arg00;
QSqlRecord * arg01;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    if (sv_isa(ST(2), "Qt::Sql::QSqlRecord")) {
        arg01 = reinterpret_cast<QSqlRecord *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type Qt::Sql::QSqlRecord");
    bool ret = THIS->insertRecord(arg00, *arg01);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool insertRows(int row, int count, const QModelIndex & parent = QModelIndex())
## bool insertRows(int row, int count, const QModelIndex & parent)
void
QSqlTableModel::insertRows(...)
PREINIT:
int arg00;
int arg01;
const QModelIndex & arg02_ = QModelIndex();
QModelIndex * arg02 = const_cast<QModelIndex *>(&arg02_);
int arg10;
int arg11;
QModelIndex * arg12;
PPCODE:
    switch(items) {
    case 3:
      {
        arg00 = (int)SvIV(ST(1));
    arg01 = (int)SvIV(ST(2));
    bool ret = THIS->insertRows(arg00, arg01, *arg02);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
        break;
      }
    case 4:
      {
        arg10 = (int)SvIV(ST(1));
    arg11 = (int)SvIV(ST(2));
    if (sv_isa(ST(3), "")) {
        arg12 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(3))));
    }
    else
        Perl_croak(aTHX_ "arg12 is not of type ");
    bool ret = THIS->insertRows(arg10, arg11, *arg12);
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

## bool isDirty(const QModelIndex & index)
void
QSqlTableModel::isDirty(...)
PREINIT:
QModelIndex * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    bool ret = THIS->isDirty(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QSqlIndex primaryKey()
void
QSqlTableModel::primaryKey(...)
PREINIT:
PPCODE:
    QSqlIndex ret = THIS->primaryKey();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlIndex", (void *)new QSqlIndex(ret));
    XSRETURN(1);

## bool removeColumns(int column, int count, const QModelIndex & parent = QModelIndex())
## bool removeColumns(int column, int count, const QModelIndex & parent)
void
QSqlTableModel::removeColumns(...)
PREINIT:
int arg00;
int arg01;
const QModelIndex & arg02_ = QModelIndex();
QModelIndex * arg02 = const_cast<QModelIndex *>(&arg02_);
int arg10;
int arg11;
QModelIndex * arg12;
PPCODE:
    switch(items) {
    case 3:
      {
        arg00 = (int)SvIV(ST(1));
    arg01 = (int)SvIV(ST(2));
    bool ret = THIS->removeColumns(arg00, arg01, *arg02);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
        break;
      }
    case 4:
      {
        arg10 = (int)SvIV(ST(1));
    arg11 = (int)SvIV(ST(2));
    if (sv_isa(ST(3), "")) {
        arg12 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(3))));
    }
    else
        Perl_croak(aTHX_ "arg12 is not of type ");
    bool ret = THIS->removeColumns(arg10, arg11, *arg12);
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

## bool removeRows(int row, int count, const QModelIndex & parent = QModelIndex())
## bool removeRows(int row, int count, const QModelIndex & parent)
void
QSqlTableModel::removeRows(...)
PREINIT:
int arg00;
int arg01;
const QModelIndex & arg02_ = QModelIndex();
QModelIndex * arg02 = const_cast<QModelIndex *>(&arg02_);
int arg10;
int arg11;
QModelIndex * arg12;
PPCODE:
    switch(items) {
    case 3:
      {
        arg00 = (int)SvIV(ST(1));
    arg01 = (int)SvIV(ST(2));
    bool ret = THIS->removeRows(arg00, arg01, *arg02);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
        break;
      }
    case 4:
      {
        arg10 = (int)SvIV(ST(1));
    arg11 = (int)SvIV(ST(2));
    if (sv_isa(ST(3), "")) {
        arg12 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(3))));
    }
    else
        Perl_croak(aTHX_ "arg12 is not of type ");
    bool ret = THIS->removeRows(arg10, arg11, *arg12);
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

## void revert()
void
QSqlTableModel::revert(...)
PREINIT:
PPCODE:
    (void)THIS->revert();
    XSRETURN(0);

## void revertAll()
void
QSqlTableModel::revertAll(...)
PREINIT:
PPCODE:
    (void)THIS->revertAll();
    XSRETURN(0);

## void revertRow(int row)
void
QSqlTableModel::revertRow(...)
PREINIT:
int arg00;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    (void)THIS->revertRow(arg00);
    XSRETURN(0);

## int rowCount(const QModelIndex & parent = QModelIndex())
## int rowCount(const QModelIndex & parent)
void
QSqlTableModel::rowCount(...)
PREINIT:
const QModelIndex & arg00_ = QModelIndex();
QModelIndex * arg00 = const_cast<QModelIndex *>(&arg00_);
QModelIndex * arg10;
PPCODE:
    switch(items) {
    case 1:
      {
        int ret = THIS->rowCount(*arg00);
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
        break;
      }
    case 2:
      {
        if (sv_isa(ST(1), "")) {
        arg10 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type ");
    int ret = THIS->rowCount(*arg10);
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

## bool select()
void
QSqlTableModel::select(...)
PREINIT:
PPCODE:
    bool ret = THIS->select();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool setData(const QModelIndex & index, const QVariant & value, int role = Qt::EditRole)
## bool setData(const QModelIndex & index, const QVariant & value, int role)
void
QSqlTableModel::setData(...)
PREINIT:
QModelIndex * arg00;
QVariant * arg01;
int arg02 = Qt::EditRole;
QModelIndex * arg10;
QVariant * arg11;
int arg12;
PPCODE:
    switch(items) {
    case 3:
      {
        if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    if (sv_isa(ST(2), "")) {
        arg01 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type ");
    bool ret = THIS->setData(*arg00, *arg01, arg02);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
        break;
      }
    case 4:
      {
        if (sv_isa(ST(1), "")) {
        arg10 = reinterpret_cast<QModelIndex *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg10 is not of type ");
    if (sv_isa(ST(2), "")) {
        arg11 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg11 is not of type ");
    arg12 = (int)SvIV(ST(3));
    bool ret = THIS->setData(*arg10, *arg11, arg12);
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

## void setEditStrategy(QSqlTableModel::EditStrategy strategy)
void
QSqlTableModel::setEditStrategy(...)
PREINIT:
QSqlTableModel::EditStrategy arg00;
PPCODE:
    switch(SvIV(ST(1))) {
    case 0:
      arg00 = QSqlTableModel::OnFieldChange;
      break;
    case 1:
      arg00 = QSqlTableModel::OnRowChange;
      break;
    case 2:
      arg00 = QSqlTableModel::OnManualSubmit;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QSqlTableModel::EditStrategy passed in");
    }
    (void)THIS->setEditStrategy(arg00);
    XSRETURN(0);

## void setFilter(const QString & filter)
void
QSqlTableModel::setFilter(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    (void)THIS->setFilter(*arg00);
    XSRETURN(0);

## bool setRecord(int row, const QSqlRecord & record)
void
QSqlTableModel::setRecord(...)
PREINIT:
int arg00;
QSqlRecord * arg01;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    if (sv_isa(ST(2), "Qt::Sql::QSqlRecord")) {
        arg01 = reinterpret_cast<QSqlRecord *>(SvIV((SV*)SvRV(ST(2))));
    }
    else
        Perl_croak(aTHX_ "arg01 is not of type Qt::Sql::QSqlRecord");
    bool ret = THIS->setRecord(arg00, *arg01);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## void setSort(int column, Qt::SortOrder order)
void
QSqlTableModel::setSort(...)
PREINIT:
int arg00;
Qt::SortOrder arg01;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    switch(SvIV(ST(2))) {
    case 0:
      arg01 = Qt::AscendingOrder;
      break;
    case 1:
      arg01 = Qt::DescendingOrder;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type Qt::SortOrder passed in");
    }
    (void)THIS->setSort(arg00, arg01);
    XSRETURN(0);

## void setTable(const QString & tableName)
void
QSqlTableModel::setTable(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    (void)THIS->setTable(*arg00);
    XSRETURN(0);

## void sort(int column, Qt::SortOrder order)
void
QSqlTableModel::sort(...)
PREINIT:
int arg00;
Qt::SortOrder arg01;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    switch(SvIV(ST(2))) {
    case 0:
      arg01 = Qt::AscendingOrder;
      break;
    case 1:
      arg01 = Qt::DescendingOrder;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type Qt::SortOrder passed in");
    }
    (void)THIS->sort(arg00, arg01);
    XSRETURN(0);

## bool submit()
void
QSqlTableModel::submit(...)
PREINIT:
PPCODE:
    bool ret = THIS->submit();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool submitAll()
void
QSqlTableModel::submitAll(...)
PREINIT:
PPCODE:
    bool ret = THIS->submitAll();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QString tableName()
void
QSqlTableModel::tableName(...)
PREINIT:
PPCODE:
    QString ret = THIS->tableName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);
