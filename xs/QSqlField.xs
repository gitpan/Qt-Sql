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
##  QSqlField(const QString & fieldName, QVariant::Type type)
##  QSqlField(const QString & fieldName, QVariant::Type type = QVariant::Invalid)
##  QSqlField(const QString & fieldName = QString(), QVariant::Type type = QVariant::Invalid)
  void
QSqlField::new(...)
PREINIT:
QSqlField *ret;
QSqlField * arg00;
QString * arg10;
QVariant::Type arg11;
QString * arg20;
QVariant::Type arg21 = QVariant::Invalid;
const QString & arg30_ = QString();
QString * arg30 = const_cast<QString *>(&arg30_);
QVariant::Type arg31 = QVariant::Invalid;
PPCODE:
    switch(items) {
      case 1:
      {
        if (1) {
      
    ret = new QSqlField(*arg30, arg31);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlField", (void *)ret);
    XSRETURN(1);
    }
        break;
      }
      case 2:
      {
        if (sv_isa(ST(1), "Qt::Sql::QSqlField")) {
      arg00 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QSqlField(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlField", (void *)ret);
    XSRETURN(1);
    }
        else if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg20 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    ret = new QSqlField(*arg20, arg21);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlField", (void *)ret);
    XSRETURN(1);
    }
	else
            Perl_croak(aTHX_ "wrong number/type of arguments passed in");
        break;
      }
      case 3:
      {
        if (sv_isa(ST(1), "Qt::Core::QString") && SvIOK(ST(2))) {
      arg10 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
      arg11 = (QVariant::Type)SvIV(ST(2));
    ret = new QSqlField(*arg10, arg11);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlField", (void *)ret);
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
    if (1) {
      
    (void)THIS->clear();
    XSRETURN(0);
    }

## QVariant defaultValue()
void
QSqlField::defaultValue(...)
PREINIT:
PPCODE:
    if (1) {
      
    QVariant ret = THIS->defaultValue();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QVariant", (void *)new QVariant(ret));
    XSRETURN(1);
    }

## bool isAutoValue()
void
QSqlField::isAutoValue(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isAutoValue();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isGenerated()
void
QSqlField::isGenerated(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isGenerated();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isNull()
void
QSqlField::isNull(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isNull();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isReadOnly()
void
QSqlField::isReadOnly(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isReadOnly();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## bool isValid()
void
QSqlField::isValid(...)
PREINIT:
PPCODE:
    if (1) {
      
    bool ret = THIS->isValid();
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## int length()
void
QSqlField::length(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->length();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QString name()
void
QSqlField::name(...)
PREINIT:
PPCODE:
    if (1) {
      
    QString ret = THIS->name();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QString", (void *)new QString(ret));
    XSRETURN(1);
    }

## bool operator!=(const QSqlField & other)
void
QSqlField::operator_not_equal(...)
PREINIT:
QSqlField * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlField")) {
      arg00 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->operator!=(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## QSqlField & operator=(const QSqlField & other)
void
QSqlField::operator_assign(...)
PREINIT:
QSqlField * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlField")) {
      arg00 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(1))));
    QSqlField * ret = &THIS->operator=(*arg00);
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Sql::QSqlField", (void *)ret);
    XSRETURN(1);
    }

## bool operator==(const QSqlField & other)
void
QSqlField::operator_equal_to(...)
PREINIT:
QSqlField * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Sql::QSqlField")) {
      arg00 = reinterpret_cast<QSqlField *>(SvIV((SV*)SvRV(ST(1))));
    bool ret = THIS->operator==(*arg00);
    ST(0) = sv_newmortal();
    ST(0) = boolSV(ret);
    XSRETURN(1);
    }

## int precision()
void
QSqlField::precision(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->precision();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QSqlField::RequiredStatus requiredStatus()
void
QSqlField::requiredStatus(...)
PREINIT:
PPCODE:
    if (1) {
      
    QSqlField::RequiredStatus ret = THIS->requiredStatus();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## void setAutoValue(bool autoVal)
void
QSqlField::setAutoValue(...)
PREINIT:
bool arg00;
PPCODE:
    if (1) {
      arg00 = (bool)SvTRUE(ST(1));
    (void)THIS->setAutoValue(arg00);
    XSRETURN(0);
    }

## void setDefaultValue(const QVariant & value)
void
QSqlField::setDefaultValue(...)
PREINIT:
QVariant * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QVariant")) {
      arg00 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setDefaultValue(*arg00);
    XSRETURN(0);
    }

## void setGenerated(bool gen)
void
QSqlField::setGenerated(...)
PREINIT:
bool arg00;
PPCODE:
    if (1) {
      arg00 = (bool)SvTRUE(ST(1));
    (void)THIS->setGenerated(arg00);
    XSRETURN(0);
    }

## void setLength(int fieldLength)
void
QSqlField::setLength(...)
PREINIT:
int arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    (void)THIS->setLength(arg00);
    XSRETURN(0);
    }

## void setName(const QString & name)
void
QSqlField::setName(...)
PREINIT:
QString * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QString")) {
      arg00 = reinterpret_cast<QString *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setName(*arg00);
    XSRETURN(0);
    }

## void setPrecision(int precision)
void
QSqlField::setPrecision(...)
PREINIT:
int arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    (void)THIS->setPrecision(arg00);
    XSRETURN(0);
    }

## void setReadOnly(bool readOnly)
void
QSqlField::setReadOnly(...)
PREINIT:
bool arg00;
PPCODE:
    if (1) {
      arg00 = (bool)SvTRUE(ST(1));
    (void)THIS->setReadOnly(arg00);
    XSRETURN(0);
    }

## void setRequired(bool required)
void
QSqlField::setRequired(...)
PREINIT:
bool arg00;
PPCODE:
    if (1) {
      arg00 = (bool)SvTRUE(ST(1));
    (void)THIS->setRequired(arg00);
    XSRETURN(0);
    }

## void setRequiredStatus(QSqlField::RequiredStatus status)
void
QSqlField::setRequiredStatus(...)
PREINIT:
QSqlField::RequiredStatus arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (QSqlField::RequiredStatus)SvIV(ST(1));
    (void)THIS->setRequiredStatus(arg00);
    XSRETURN(0);
    }

## void setSqlType(int type)
void
QSqlField::setSqlType(...)
PREINIT:
int arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (int)SvIV(ST(1));
    (void)THIS->setSqlType(arg00);
    XSRETURN(0);
    }

## void setType(QVariant::Type type)
void
QSqlField::setType(...)
PREINIT:
QVariant::Type arg00;
PPCODE:
    if (SvIOK(ST(1))) {
      arg00 = (QVariant::Type)SvIV(ST(1));
    (void)THIS->setType(arg00);
    XSRETURN(0);
    }

## void setValue(const QVariant & value)
void
QSqlField::setValue(...)
PREINIT:
QVariant * arg00;
PPCODE:
    if (sv_isa(ST(1), "Qt::Core::QVariant")) {
      arg00 = reinterpret_cast<QVariant *>(SvIV((SV*)SvRV(ST(1))));
    (void)THIS->setValue(*arg00);
    XSRETURN(0);
    }

## QVariant::Type type()
void
QSqlField::type(...)
PREINIT:
PPCODE:
    if (1) {
      
    QVariant::Type ret = THIS->type();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## int typeID()
void
QSqlField::typeID(...)
PREINIT:
PPCODE:
    if (1) {
      
    int ret = THIS->typeID();
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)ret);
    XSRETURN(1);
    }

## QVariant value()
void
QSqlField::value(...)
PREINIT:
PPCODE:
    if (1) {
      
    QVariant ret = THIS->value();
    ST(0) = sv_newmortal();
    sv_setref_pv(ST(0), "Qt::Core::QVariant", (void *)new QVariant(ret));
    XSRETURN(1);
    }




################################################################
#### 
#### ENUMS
#### 
################################################################
# RequiredStatus::Unknown
void
Unknown()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlField::Unknown);
    XSRETURN(1);


# RequiredStatus::Optional
void
Optional()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlField::Optional);
    XSRETURN(1);


# RequiredStatus::Required
void
Required()
PPCODE:
    ST(0) = sv_newmortal();
    sv_setiv(ST(0), (IV)QSqlField::Required);
    XSRETURN(1);
