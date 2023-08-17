.class public abstract Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;
.super Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field public static synthetic class$org$apache$xmlbeans$impl$values$JavaGDateHolderEx:Ljava/lang/Class;


# instance fields
.field private _schemaType:Lorg/apache/xmlbeans/SchemaType;

.field private _value:Lorg/apache/xmlbeans/GDate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->class$org$apache$xmlbeans$impl$values$JavaGDateHolderEx:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.values.JavaGDateHolderEx"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->class$org$apache$xmlbeans$impl$values$JavaGDateHolderEx:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->initComplexType(ZZ)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static lex(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)Lorg/apache/xmlbeans/GDate;
    .locals 6

    const-string v0, "date"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/apache/xmlbeans/GDate;

    invoke-direct {v4, p0}, Lorg/apache/xmlbeans/GDate;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-interface {p2, v0, v4}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/apache/xmlbeans/GDate;->getBuiltinTypeCode()I

    move-result v5

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p1

    if-eq v5, p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "wrong type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-interface {p2, v0, p1}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lorg/apache/xmlbeans/GDate;->isValid()Z

    move-result p1

    if-nez p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    invoke-interface {p2, v0, p1}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    return-object v3
.end method

.method public static validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)Lorg/apache/xmlbeans/GDate;
    .locals 4

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->lex(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)Lorg/apache/xmlbeans/GDate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->hasPatternFacet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/SchemaType;->matchPatternFacet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "date"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "cvc-datatype-valid.1.1"

    invoke-interface {p2, p0, v1}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static validateValue(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 8

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getBuiltinTypeCode()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v1

    const-string v2, "date"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Date ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, ") does not have the set of fields required for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {p2, v2, v0}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v1, :cond_1

    check-cast v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->gDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/GDateSpecification;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v7

    if-gtz v7, :cond_1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v3

    aput-object p0, v7, v4

    aput-object v1, v7, v5

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const-string v1, "cvc-minExclusive-valid"

    invoke-interface {p2, v1, v7}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p1, v6}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->gDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/GDateSpecification;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v7

    if-gez v7, :cond_2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v3

    aput-object p0, v7, v4

    aput-object v1, v7, v5

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const-string v1, "cvc-minInclusive-valid"

    invoke-interface {p2, v1, v7}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->gDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/GDateSpecification;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v7

    if-ltz v7, :cond_3

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v3

    aput-object p0, v7, v4

    aput-object v1, v7, v5

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const-string v1, "cvc-maxExclusive-valid"

    invoke-interface {p2, v1, v7}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->gDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/GDateSpecification;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v7

    if-lez v7, :cond_4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v3

    aput-object p0, v6, v4

    aput-object v1, v6, v5

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v1, "cvc-maxInclusive-valid"

    invoke-interface {p2, v1, v6}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-eqz v1, :cond_7

    move v6, v3

    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_6

    aget-object v7, v1, v6

    check-cast v7, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v7}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->gDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v7

    invoke-interface {p0, v7}, Lorg/apache/xmlbeans/GDateSpecification;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v7

    if-nez v7, :cond_5

    return-void

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    aput-object p0, v0, v4

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v5

    const-string p0, "cvc-enumeration-valid"

    invoke-interface {p2, p0, v0}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public compare_to(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_value:Lorg/apache/xmlbeans/GDate;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->gDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result p1

    return p1
.end method

.method public compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_value:Lorg/apache/xmlbeans/GDate;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDate;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_value:Lorg/apache/xmlbeans/GDate;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->gDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/GDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCalendarValue()Ljava/util/Calendar;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_value:Lorg/apache/xmlbeans/GDate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDate;->getCalendar()Lorg/apache/xmlbeans/XmlCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getDateValue()Ljava/util/Date;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_value:Lorg/apache/xmlbeans/GDate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDate;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getGDateValue()Lorg/apache/xmlbeans/GDate;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_value:Lorg/apache/xmlbeans/GDate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getIntValue()I
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v0

    const/16 v1, 0x12

    const/16 v2, 0x15

    const/16 v3, 0x14

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_value:Lorg/apache/xmlbeans/GDate;

    if-nez v4, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    if-eq v0, v1, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_4
    invoke-virtual {v4}, Lorg/apache/xmlbeans/GDate;->getMonth()I

    move-result v0

    return v0

    :cond_5
    invoke-virtual {v4}, Lorg/apache/xmlbeans/GDate;->getDay()I

    move-result v0

    return v0

    :cond_6
    invoke-virtual {v4}, Lorg/apache/xmlbeans/GDate;->getYear()I

    move-result v0

    return v0
.end method

.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method

.method public set_Calendar(Ljava/util/Calendar;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v0

    new-instance v1, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v1, p1}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/GDateBuilder;->setBuiltinTypeCode(I)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDateBuilder;->toGDate()Lorg/apache/xmlbeans/GDate;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->validateValue(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    :cond_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_value:Lorg/apache/xmlbeans/GDate;

    return-void
.end method

.method public set_Date(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    new-instance v1, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v1, p1}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/util/Date;)V

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/GDateBuilder;->setBuiltinTypeCode(I)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDateBuilder;->toGDate()Lorg/apache/xmlbeans/GDate;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->validateValue(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    :cond_1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_value:Lorg/apache/xmlbeans/GDate;

    return-void

    :cond_2
    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw p1
.end method

.method public set_GDate(Lorg/apache/xmlbeans/GDateSpecification;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/xmlbeans/GDate;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getBuiltinTypeCode()I

    move-result v1

    if-ne v1, v0, :cond_0

    check-cast p1, Lorg/apache/xmlbeans/GDate;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getBuiltinTypeCode()I

    move-result v1

    if-eq v1, v0, :cond_1

    new-instance v1, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v1, p1}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/GDateBuilder;->setBuiltinTypeCode(I)V

    move-object p1, v1

    :cond_1
    new-instance v0, Lorg/apache/xmlbeans/GDate;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/GDate;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->validateValue(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    :cond_2
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_value:Lorg/apache/xmlbeans/GDate;

    return-void
.end method

.method public set_int(I)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v0

    const/16 v1, 0x15

    const/16 v2, 0x12

    const/16 v3, 0x14

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v4, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v4}, Lorg/apache/xmlbeans/GDateBuilder;-><init>()V

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p1}, Lorg/apache/xmlbeans/GDateBuilder;->setMonth(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4, p1}, Lorg/apache/xmlbeans/GDateBuilder;->setDay(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4, p1}, Lorg/apache/xmlbeans/GDateBuilder;->setYear(I)V

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    sget-object v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {v4, p1, v0}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->validateValue(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    :cond_5
    invoke-virtual {v4}, Lorg/apache/xmlbeans/GDateBuilder;->toGDate()Lorg/apache/xmlbeans/GDate;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_value:Lorg/apache/xmlbeans/GDate;

    return-void
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_value:Lorg/apache/xmlbeans/GDate;

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)Lorg/apache/xmlbeans/GDate;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->lex(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)Lorg/apache/xmlbeans/GDate;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->validateValue(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    :cond_1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_value:Lorg/apache/xmlbeans/GDate;

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)Lorg/apache/xmlbeans/GDate;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->gDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->validateValue(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    return-void
.end method

.method public value_hash_code()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->_value:Lorg/apache/xmlbeans/GDate;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDate;->hashCode()I

    move-result v0

    return v0
.end method
