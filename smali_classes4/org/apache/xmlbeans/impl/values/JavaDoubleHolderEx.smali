.class public abstract Lorg/apache/xmlbeans/impl/values/JavaDoubleHolderEx;
.super Lorg/apache/xmlbeans/impl/values/JavaDoubleHolder;
.source "SourceFile"


# instance fields
.field private _schemaType:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolder;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->initComplexType(ZZ)V

    return-void
.end method

.method public static validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)D
    .locals 5

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolder;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)D

    move-result-wide v0

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/SchemaType;->matchPatternFacet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "double"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "cvc-datatype-valid.1.1"

    invoke-interface {p2, p0, v2}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-wide v0
.end method

.method public static validateValue(DLorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 10

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "double"

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    check-cast v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->doubleValue()D

    move-result-wide v7

    invoke-static {p0, p1, v7, v8}, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolder;->compare(DD)I

    move-result v1

    if-gtz v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v3, v1, v6

    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, p0, p1}, Ljava/lang/Double;-><init>(D)V

    aput-object v9, v1, v5

    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, v7, v8}, Ljava/lang/Double;-><init>(D)V

    aput-object v9, v1, v2

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v0

    const-string v7, "cvc-minExclusive-valid"

    invoke-interface {p3, v7, v1}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p2, v4}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->doubleValue()D

    move-result-wide v7

    invoke-static {p0, p1, v7, v8}, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolder;->compare(DD)I

    move-result v1

    if-gez v1, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v3, v1, v6

    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, p0, p1}, Ljava/lang/Double;-><init>(D)V

    aput-object v9, v1, v5

    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, v7, v8}, Ljava/lang/Double;-><init>(D)V

    aput-object v9, v1, v2

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v0

    const-string v7, "cvc-minInclusive-valid"

    invoke-interface {p3, v7, v1}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x5

    invoke-interface {p2, v1}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->doubleValue()D

    move-result-wide v7

    invoke-static {p0, p1, v7, v8}, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolder;->compare(DD)I

    move-result v1

    if-lez v1, :cond_2

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v3, v1, v6

    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, p0, p1}, Ljava/lang/Double;-><init>(D)V

    aput-object v9, v1, v5

    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, v7, v8}, Ljava/lang/Double;-><init>(D)V

    aput-object v9, v1, v2

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v0

    const-string v7, "cvc-maxInclusive-valid"

    invoke-interface {p3, v7, v1}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x6

    invoke-interface {p2, v1}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->doubleValue()D

    move-result-wide v7

    invoke-static {p0, p1, v7, v8}, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolder;->compare(DD)I

    move-result v1

    if-ltz v1, :cond_3

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v3, v1, v6

    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, p0, p1}, Ljava/lang/Double;-><init>(D)V

    aput-object v4, v1, v5

    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v7, v8}, Ljava/lang/Double;-><init>(D)V

    aput-object v4, v1, v2

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v4, "cvc-maxExclusive-valid"

    invoke-interface {p3, v4, v1}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-eqz v1, :cond_6

    move v4, v6

    :goto_0
    array-length v7, v1

    if-ge v4, v7, :cond_5

    aget-object v7, v1, v4

    check-cast v7, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v7}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->doubleValue()D

    move-result-wide v7

    invoke-static {p0, p1, v7, v8}, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolder;->compare(DD)I

    move-result v7

    if-nez v7, :cond_4

    return-void

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v6

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p0, p1}, Ljava/lang/Double;-><init>(D)V

    aput-object v1, v0, v5

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "cvc-enumeration-valid"

    invoke-interface {p3, p0, v0}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method

.method public set_double(D)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, p2, v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolderEx;->validateValue(DLorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolder;->set_double(D)V

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolderEx;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)D

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-static {v0, v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/JavaDoubleHolderEx;->validateValue(DLorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    return-void
.end method
