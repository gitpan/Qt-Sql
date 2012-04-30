// WARNING: ANY CHANGE TO THIS FILE WILL BE LOST!
// MADE BY: ./script/create_top_dot_xs.pl

#include "QtCore/qglobal.h"
#include "QtSql/qsqldatabase.h"
#include "QtSql/qsqldriver.h"
#include "QtSql/qsqldriverplugin.h"
#include "QtSql/qsqlerror.h"
#include "QtSql/qsqlfield.h"
#include "QtSql/qsqlindex.h"
#include "QtSql/qsqlquery.h"
#include "QtSql/qsqlquerymodel.h"
#include "QtSql/qsqlrecord.h"
#include "QtSql/qsqlrelationaltablemodel.h"
#include "QtSql/qsqlresult.h"
#include "QtSql/qsqltablemodel.h"

#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"
#undef do_open
#undef do_close
#undef RETURN

typedef bool (*T_FPOINTER_QINTERNALCALLBACK_QNAMESPACE)(void **);
typedef void (*T_FPOINTER_QTMSGHANDLER_QGLOBAL)(QtMsgType,const char *);
typedef QMap<QString,QVariant> T000;

MODULE = Qt		PACKAGE = Qt
PROTOTYPES: DISABLE

INCLUDE:		xs/QSqlDatabase.xs
INCLUDE:		xs/QSqlDriver.xs
INCLUDE:		xs/QSqlDriverCreatorBase.xs
INCLUDE:		xs/QSqlDriverFactoryInterface.xs
INCLUDE:		xs/QSqlDriverPlugin.xs
INCLUDE:		xs/QSqlError.xs
INCLUDE:		xs/QSqlField.xs
INCLUDE:		xs/QSqlIndex.xs
INCLUDE:		xs/QSqlQuery.xs
INCLUDE:		xs/QSqlQueryModel.xs
INCLUDE:		xs/QSqlRecord.xs
INCLUDE:		xs/QSqlRelation.xs
INCLUDE:		xs/QSqlRelationalTableModel.xs
INCLUDE:		xs/QSqlResult.xs
INCLUDE:		xs/QSqlTableModel.xs
INCLUDE:		xs/T000.xs
