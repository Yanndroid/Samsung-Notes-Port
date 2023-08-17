.class public abstract Lorg/apache/xmlbeans/impl/values/JavaFloatHolderEx;
.super Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;
.source "SourceFile"


# instance fields
.field private _schemaType:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaFloatHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->initComplexType(ZZ)V

    return-void
.end method

.method public static validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)F
    .locals 4

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)F

    move-result v0

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/SchemaType;->matchPatternFacet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "float"

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
    return v0
.end method

.method public static validateValue(FLorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 9

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "float"

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    check-cast v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->floatValue()F

    move-result v1

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->compare(FF)I

    move-result v7

    if-gtz v7, :cond_0

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v3, v7, v6

    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, p0}, Ljava/lang/Float;-><init>(F)V

    aput-object v8, v7, v5

    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, v1}, Ljava/lang/Float;-><init>(F)V

    aput-object v8, v7, v2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const-string v1, "cvc-minExclusive-valid"

    invoke-interface {p2, v1, v7}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->floatValue()F

    move-result v1

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->compare(FF)I

    move-result v7

    if-gez v7, :cond_1

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v3, v7, v6

    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, p0}, Ljava/lang/Float;-><init>(F)V

    aput-object v8, v7, v5

    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, v1}, Ljava/lang/Float;-><init>(F)V

    aput-object v8, v7, v2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const-string v1, "cvc-minInclusive-valid"

    invoke-interface {p2, v1, v7}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->floatValue()F

    move-result v1

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->compare(FF)I

    move-result v7

    if-lez v7, :cond_2

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v3, v7, v6

    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, p0}, Ljava/lang/Float;-><init>(F)V

    aput-object v8, v7, v5

    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, v1}, Ljava/lang/Float;-><init>(F)V

    aput-object v8, v7, v2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const-string v1, "cvc-maxInclusive-valid"

    invoke-interface {p2, v1, v7}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->floatValue()F

    move-result v1

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->compare(FF)I

    move-result v7

    if-ltz v7, :cond_3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v6

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, p0}, Ljava/lang/Float;-><init>(F)V

    aput-object v7, v4, v5

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, v1}, Ljava/lang/Float;-><init>(F)V

    aput-object v7, v4, v2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v1, "cvc-maxExclusive-valid"

    invoke-interface {p2, v1, v4}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-eqz v1, :cond_6

    move v4, v6

    :goto_0
    array-length v7, v1

    if-ge v4, v7, :cond_5

    aget-object v7, v1, v4

    check-cast v7, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v7}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->floatValue()F

    move-result v7

    invoke-static {p0, v7}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->compare(FF)I

    move-result v7

    if-nez v7, :cond_4

    return-void

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v6

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p0}, Ljava/lang/Float;-><init>(F)V

    aput-object v1, v0, v5

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "cvc-enumeration-valid"

    invoke-interface {p2, p0, v0}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaFloatHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method

.method public set_float(F)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaFloatHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolderEx;->validateValue(FLorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolder;->set_float(F)V

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolderEx;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)F

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/JavaFloatHolderEx;->validateValue(FLorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    return-void
.end method
