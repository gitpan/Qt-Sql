################################################################
# THE FOLLOWING CODE IS AUTOMATED, ANY MODIFICATION WILL BE LOST!
#
# Copyright (C) 2007 - 2011 by Dongxu Ma <dongxu _at_ cpan _dot_ org>
#
# This library is free software; you can redistribute it and/or 
# modify it under the same terms as Perl itself.
# See http://dev.perl.org/licenses/artistic.html
################################################################

MODULE = Qt::Sql			PACKAGE = Qt::Sql::QSqlField
PROTOTYPES: DISABLE

# classname: QSqlField
################################################################
#### 
#### PUBLIC MEMBER FUNCTIONS
#### 
################################################################

##  QSqlField(const QSqlField & other)
##  QSqlField(const QString & fieldName, QVariant::Type type = QVariant::Invalid)
##  QSqlField(const QString & fieldName, QVariant::Type type)
##  QSqlField(const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid)
##  QSqlField(const QString & fieldName, QVariant::Type type = QVariant::Invalid)
  void
QSqlField::new(...)
PREINIT:
QSqlField *ret;
QSqlField * arg00;
QString * arg10;
QVariant::Type arg11 = QVariant::Invalid;
QString * arg20;
QVariant::Type arg21;
const QString & arg30_ = QString();
QString * arg30 = const_cast<QString *>(&arg30_);
QVariant::Type arg31 = QVariant::Invalid;
QString * arg40;
QVariant::Type arg41 = QVariant::Invalid;
PPCODE:
    switch(items) {
    case 2:
      {
        if (sv_isa(ST(1), "Qt::Sql::QSqlField")) {
        arg00 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Sql::QSqlField");
    ret = new QSqlField(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlField", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 3:
      {
        if (sv_isa(ST(1), "")) {
        arg20 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg20 is not of type ");
    switch(SvIV(ST(2))) {
    default:
      Perl_croak(aTHX_ "wrong enum value for type QVariant::Type passed in");
    }
    ret = new QSqlField(*arg20, arg21);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlField", (void *)ret);
    XSRETURN(1);
        break;
      }
    case 1:
      {
        ret = new QSqlField(*arg30, arg31);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlField", (void *)ret);
    XSRETURN(1);
        break;
      }
    default:
      {
        Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
    }

##  ~QSqlField()
void
QSqlField::DESTROY()
CODE:
    if(THIS != 0 && !SvREADONLY(SvRV(ST(0))))
        delete THIS;

## void clear()
void
QSqlField::clear(...)
PREINIT:
PPCODE:
    (void)THIS->clear();
    XSRETURN(0);

## QVariant defaultValue()
void
QSqlField::defaultValue(...)
PREINIT:
PPCODE:
    QVariant ret = THIS->defaultValue();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QVariant(ret));
    XSRETURN(1);

## bool isAutoValue()
void
QSqlField::isAutoValue(...)
PREINIT:
PPCODE:
    bool ret = THIS->isAutoValue();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isGenerated()
void
QSqlField::isGenerated(...)
PREINIT:
PPCODE:
    bool ret = THIS->isGenerated();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isNull()
void
QSqlField::isNull(...)
PREINIT:
PPCODE:
    bool ret = THIS->isNull();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isReadOnly()
void
QSqlField::isReadOnly(...)
PREINIT:
PPCODE:
    bool ret = THIS->isReadOnly();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## bool isValid()
void
QSqlField::isValid(...)
PREINIT:
PPCODE:
    bool ret = THIS->isValid();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## int length()
void
QSqlField::length(...)
PREINIT:
PPCODE:
    int ret = THIS->length();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## QString name()
void
QSqlField::name(...)
PREINIT:
PPCODE:
    QString ret = THIS->name();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QString(ret));
    XSRETURN(1);

## bool operator!=(const QSqlField & other)
void
QSqlField::operator_not_equal(...)
PREINIT:
QSqlField * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlField")) {
        arg00 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Sql::QSqlField");
    bool ret = THIS->operator!=(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## QSqlField & operator=(const QSqlField & other)
void
QSqlField::operator_assign(...)
PREINIT:
QSqlField * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlField")) {
        arg00 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Sql::QSqlField");
    QSqlField * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlField", (void *)ret);
    XSRETURN(1);

## bool operator==(const QSqlField & other)
void
QSqlField::operator_equal_to(...)
PREINIT:
QSqlField * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlField")) {
        arg00 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type Qt::Sql::QSqlField");
    bool ret = THIS->operator==(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);

## int precision()
void
QSqlField::precision(...)
PREINIT:
PPCODE:
    int ret = THIS->precision();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## QSqlField::RequiredStatus requiredStatus()
void
QSqlField::requiredStatus(...)
PREINIT:
PPCODE:
    QSqlField::RequiredStatus ret = THIS->requiredStatus();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## void setAutoValue(bool autoVal)
void
QSqlField::setAutoValue(...)
PREINIT:
bool arg00;
PPCODE:
    arg00 = (bool)SvTRUE(ST(1));
    (void)THIS->setAutoValue(arg00);
    XSRETURN(0);

## void setDefaultValue(const QVariant & value)
void
QSqlField::setDefaultValue(...)
PREINIT:
QVariant * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    (void)THIS->setDefaultValue(*arg00);
    XSRETURN(0);

## void setGenerated(bool gen)
void
QSqlField::setGenerated(...)
PREINIT:
bool arg00;
PPCODE:
    arg00 = (bool)SvTRUE(ST(1));
    (void)THIS->setGenerated(arg00);
    XSRETURN(0);

## void setLength(int fieldLength)
void
QSqlField::setLength(...)
PREINIT:
int arg00;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    (void)THIS->setLength(arg00);
    XSRETURN(0);

## void setName(const QString & name)
void
QSqlField::setName(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    (void)THIS->setName(*arg00);
    XSRETURN(0);

## void setPrecision(int precision)
void
QSqlField::setPrecision(...)
PREINIT:
int arg00;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    (void)THIS->setPrecision(arg00);
    XSRETURN(0);

## void setReadOnly(bool readOnly)
void
QSqlField::setReadOnly(...)
PREINIT:
bool arg00;
PPCODE:
    arg00 = (bool)SvTRUE(ST(1));
    (void)THIS->setReadOnly(arg00);
    XSRETURN(0);

## void setRequired(bool required)
void
QSqlField::setRequired(...)
PREINIT:
bool arg00;
PPCODE:
    arg00 = (bool)SvTRUE(ST(1));
    (void)THIS->setRequired(arg00);
    XSRETURN(0);

## void setRequiredStatus(QSqlField::RequiredStatus status)
void
QSqlField::setRequiredStatus(...)
PREINIT:
QSqlField::RequiredStatus arg00;
PPCODE:
    switch(SvIV(ST(1))) {
    case 0:
      arg00 = QSqlField::Unknown;
      break;
    case 1:
      arg00 = QSqlField::Optional;
      break;
    case 2:
      arg00 = QSqlField::Required;
      break;
    default:
      Perl_croak(aTHX_ "wrong enum value for type QSqlField::RequiredStatus passed in");
    }
    (void)THIS->setRequiredStatus(arg00);
    XSRETURN(0);

## void setSqlType(int type)
void
QSqlField::setSqlType(...)
PREINIT:
int arg00;
PPCODE:
    arg00 = (int)SvIV(ST(1));
    (void)THIS->setSqlType(arg00);
    XSRETURN(0);

## void setType(QVariant::Type type)
void
QSqlField::setType(...)
PREINIT:
QVariant::Type arg00;
PPCODE:
    switch(SvIV(ST(1))) {
    default:
      Perl_croak(aTHX_ "wrong enum value for type QVariant::Type passed in");
    }
    (void)THIS->setType(arg00);
    XSRETURN(0);

## void setValue(const QVariant & value)
void
QSqlField::setValue(...)
PREINIT:
QVariant * arg00;
PPCODE:
    if (sv_isa(ST(1), "")) {
        arg00 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(1))));
    }
    else
        Perl_croak(aTHX_ "arg00 is not of type ");
    (void)THIS->setValue(*arg00);
    XSRETURN(0);

## QVariant::Type type()
void
QSqlField::type(...)
PREINIT:
PPCODE:
    QVariant::Type ret = THIS->type();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## int typeID()
void
QSqlField::typeID(...)
PREINIT:
PPCODE:
    int ret = THIS->typeID();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);

## QVariant value()
void
QSqlField::value(...)
PREINIT:
PPCODE:
    QVariant ret = THIS->value();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "", (void *)new QVariant(ret));
    XSRETURN(1);
