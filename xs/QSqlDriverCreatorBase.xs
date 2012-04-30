################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2012 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Sql			PACKAGE = Qt::Sql::QSqlDriverCreatorBase
PROTOTYPES: DISABLE

# classname: QSqlDriverCreatorBase
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################



##  ~QSqlDriverCreatorBase()
void
QSqlDriverCreatorBase::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## QSqlDriver * createObject()
void
QSqlDriverCreatorBase::createObject(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSqlDriver * ret = THIS->createObject();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlDriver", (void *)ret);
    XSRETURN(1);
    }
