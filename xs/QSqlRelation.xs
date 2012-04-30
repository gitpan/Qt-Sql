################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2012 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Sql			PACKAGE = Qt::Sql::QSqlRelation
PROTOTYPES: DISABLE

# classname: QSqlRelation
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QSqlRelation()
##  QSqlRelation(const QString & aTableName, const QString & indexCol, const QString & displayCol)
  void
QSqlRelation::new(...)
PREINIT:
QSqlRelation *ret;
QString * arg10;
QString * arg11;
QString * arg12;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    ret = new QSqlRelation();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlRelation", (void *)ret);
    XSRETURN(1);
    }
        break;
      }
      case 4:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && sv_isa(ST(2), "Qt::Core::QString") && sv_isa(ST(3), "Qt::Core::QString")) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(2))));
      arg12 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(3))));
    ret = new QSqlRelation(*arg10, *arg11, *arg12);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlRelation", (void *)ret);
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



## QString displayColumn()
void
QSqlRelation::displayColumn(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->displayColumn();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## QString indexColumn()
void
QSqlRelation::indexColumn(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->indexColumn();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## bool isValid()
void
QSqlRelation::isValid(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isValid();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QString tableName()
void
QSqlRelation::tableName(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->tableName();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }
