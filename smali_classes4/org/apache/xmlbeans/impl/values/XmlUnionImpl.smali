.class public Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;
.super Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlAnySimpleType;


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final JAVA_BYTEARRAY:I = 0x32

.field private static final JAVA_CALENDAR:I = 0x31

.field private static final JAVA_DATE:I = 0x30

.field private static final JAVA_LIST:I = 0x33

.field private static final JAVA_NUMBER:I = 0x2f

.field public static synthetic class$org$apache$xmlbeans$impl$values$XmlUnionImpl:Ljava/lang/Class;


# instance fields
.field private _schemaType:Lorg/apache/xmlbeans/SchemaType;

.field private _textvalue:Ljava/lang/String;

.field private _value:Lorg/apache/xmlbeans/XmlAnySimpleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->class$org$apache$xmlbeans$impl$values$XmlUnionImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.values.XmlUnionImpl"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->class$org$apache$xmlbeans$impl$values$XmlUnionImpl:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_textvalue:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->initComplexType(ZZ)V

    return-void
.end method

.method private static check(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaType;)Z
    .locals 4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v3, p0}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    return v0
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

.method public static lexical_overlap(II)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    if-eq p1, v1, :cond_c

    const/16 v1, 0xc

    if-eq p0, v1, :cond_c

    if-eq p1, v1, :cond_c

    const/4 v1, 0x6

    if-eq p0, v1, :cond_c

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq p0, v3, :cond_b

    const/16 v5, 0xd

    const/16 v6, 0x12

    const/4 v7, 0x5

    const/4 v8, 0x4

    if-eq p0, v8, :cond_9

    if-eq p0, v7, :cond_7

    if-eq p0, v5, :cond_5

    if-eq p0, v6, :cond_3

    packed-switch p0, :pswitch_data_0

    return v4

    :pswitch_0
    if-eq p1, v3, :cond_2

    if-eq p1, v8, :cond_2

    if-eq p1, v7, :cond_2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    if-eq p1, v5, :cond_2

    return v4

    :cond_2
    return v0

    :cond_3
    :pswitch_1
    if-eq p1, v8, :cond_4

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_4

    packed-switch p1, :pswitch_data_1

    return v4

    :cond_4
    :pswitch_2
    return v0

    :cond_5
    if-eq p1, v8, :cond_6

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_6

    return v4

    :cond_6
    return v0

    :cond_7
    if-eq p1, v3, :cond_8

    if-eq p1, v8, :cond_8

    if-eq p1, v6, :cond_8

    packed-switch p1, :pswitch_data_2

    return v4

    :cond_8
    :pswitch_3
    return v0

    :cond_9
    if-eq p1, v3, :cond_a

    if-eq p1, v7, :cond_a

    if-eq p1, v5, :cond_a

    if-eq p1, v6, :cond_a

    packed-switch p1, :pswitch_data_3

    return v4

    :cond_a
    :pswitch_4
    return v0

    :cond_b
    if-eq p1, v2, :cond_c

    if-eq p1, v1, :cond_c

    return v4

    :cond_c
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static logical_overlap(Lorg/apache/xmlbeans/SchemaType;I)Z
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/16 v1, 0x2e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt p1, v1, :cond_4

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    if-eq v0, v2, :cond_2

    return v3

    :cond_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2

    :cond_4
    packed-switch p1, :pswitch_data_0

    if-eqz v0, :cond_d

    return v3

    :pswitch_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    return v2

    :pswitch_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result p1

    if-eq p1, v2, :cond_6

    return v3

    :cond_6
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_7

    const/4 p1, 0x5

    if-eq p0, p1, :cond_7

    return v3

    :cond_7
    return v2

    :pswitch_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result p1

    if-eq p1, v2, :cond_8

    return v3

    :cond_8
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    packed-switch p0, :pswitch_data_1

    return v3

    :pswitch_3
    return v2

    :pswitch_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result p1

    if-eq p1, v2, :cond_9

    return v3

    :cond_9
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    const/16 p1, 0xe

    if-eq p0, p1, :cond_a

    const/16 p1, 0x10

    if-eq p0, p1, :cond_a

    return v3

    :cond_a
    return v2

    :pswitch_5
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result p1

    if-eq p1, v2, :cond_b

    return v3

    :cond_b
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    const/16 p1, 0x12

    if-eq p0, p1, :cond_c

    const/16 p1, 0x14

    if-eq p0, p1, :cond_c

    const/16 p1, 0x15

    if-eq p0, p1, :cond_c

    packed-switch p0, :pswitch_data_2

    return v3

    :cond_c
    :pswitch_6
    return v2

    :cond_d
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "missing case"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private set_primitive(ILjava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getUnionConstituentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->has_store()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;-><init>(Lorg/apache/xmlbeans/impl/values/TypeStore;)V

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->push(Lorg/apache/xmlbeans/impl/values/NamespaceContext;)V

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    move v4, v2

    :goto_2
    if-nez v4, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_3
    :goto_3
    move v5, v3

    :goto_4
    array-length v6, v0

    if-ge v5, v6, :cond_7

    aget-object v6, v0, v5

    invoke-static {v6, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->logical_overlap(Lorg/apache/xmlbeans/SchemaType;I)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_6

    :try_start_1
    aget-object v6, v0, v5

    check-cast v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v6, p2, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->newValue(Ljava/lang/Object;Z)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p1
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->stringValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_textvalue:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_4
    return-void

    :catch_0
    move-exception v6

    :try_start_3
    sget-boolean v7, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->$assertionsDisabled:Z

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Unexpected "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :cond_6
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    if-nez v4, :cond_a

    :cond_8
    if-eqz v1, :cond_9

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_9
    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    const-string p2, "cvc-datatype-valid.1.2.3"

    invoke-direct {p1, p2, v0}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_a
    move v4, v3

    goto :goto_2

    :goto_6
    if-eqz v1, :cond_b

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_b
    throw p1
.end method


# virtual methods
.method public compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_textvalue:Ljava/lang/String;

    return-object p1
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p1

    return p1
.end method

.method public getBigDecimalValue()Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getBooleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getByteArrayValue()[B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getByteArrayValue()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getByteValue()B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getByteValue()B

    move-result v0

    :goto_0
    return v0
.end method

.method public getCalendarValue()Ljava/util/Calendar;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getCalendarValue()Ljava/util/Calendar;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDateValue()Ljava/util/Date;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getDateValue()Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getDoubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFloatValue()F
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getFloatValue()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getGDateValue()Lorg/apache/xmlbeans/GDate;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGDurationValue()Lorg/apache/xmlbeans/GDuration;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getGDurationValue()Lorg/apache/xmlbeans/GDuration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getIntValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getListValue()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getListValue()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLongValue()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getLongValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getQNameValue()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getQNameValue()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getShortValue()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getShortValue()S

    move-result v0

    :goto_0
    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public get_wscanon_rule()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public instanceType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->instanceType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public is_defaultable_ws(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_text(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method

.method public set_BigDecimal(Ljava/math/BigDecimal;)V
    .locals 1

    const/16 v0, 0x2f

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_BigInteger(Ljava/math/BigInteger;)V
    .locals 1

    const/16 v0, 0x2f

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_ByteArray([B)V
    .locals 1

    const/16 v0, 0x32

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_Calendar(Ljava/util/Calendar;)V
    .locals 1

    const/16 v0, 0x31

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_Date(Ljava/util/Date;)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_GDate(Lorg/apache/xmlbeans/GDateSpecification;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getBuiltinTypeCode()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw p1
.end method

.method public set_GDuration(Lorg/apache/xmlbeans/GDurationSpecification;)V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_QName(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_b64([B)V
    .locals 1

    const/16 v0, 0x32

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_boolean(Z)V
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_byte(B)V
    .locals 1

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    const/16 p1, 0x2f

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_double(D)V
    .locals 1

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    const/16 p1, 0x2f

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_enum(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_float(F)V
    .locals 1

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    const/16 p1, 0x2f

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_hex([B)V
    .locals 1

    const/16 v0, 0x32

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_int(I)V
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 p1, 0x2f

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_list(Ljava/util/List;)V
    .locals 1

    const/16 v0, 0x33

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_long(J)V
    .locals 1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/16 p1, 0x2f

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_textvalue:Ljava/lang/String;

    return-void
.end method

.method public set_short(S)V
    .locals 1

    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    const/16 p1, 0x2f

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaType;->matchPatternFacet(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "string"

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "cvc-datatype-valid.1.1"

    invoke-direct {v0, p1, v4}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_textvalue:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_textvalue:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getUnionConstituentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    sget-boolean v5, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->has_store()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;-><init>(Lorg/apache/xmlbeans/impl/values/TypeStore;)V

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->push(Lorg/apache/xmlbeans/impl/values/NamespaceContext;)V

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    move v6, v2

    :goto_3
    if-nez v6, :cond_5

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_5
    :goto_4
    move v7, v3

    :goto_5
    array-length v8, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v7, v8, :cond_8

    :try_start_1
    aget-object v8, v4, v7

    check-cast v8, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v8, p1, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->newValue(Ljava/lang/Object;Z)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {v8, v9}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->check(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_6

    :cond_6
    iput-object v8, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_7

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_7
    return-void

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Troublesome union exception caused by unexpected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    if-nez v6, :cond_b

    :cond_9
    if-eqz v5, :cond_a

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_a
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_textvalue:Ljava/lang/String;

    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "cvc-datatype-valid.1.2.3"

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_b
    move v6, v3

    goto :goto_3

    :goto_7
    if-eqz v5, :cond_c

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_c
    throw p1
.end method

.method public set_xmldate(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmldatetime(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmldecimal(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmldouble(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlduration(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlfloat(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlgday(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlgmonth(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlgmonthday(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlgyear(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlgyearmonth(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmltime(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 6

    const-string v0, "\' does not match any of the member types for "

    const-string v1, "\'"

    const-string v2, "union"

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v5, :cond_0

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-interface {p2, v2, v4}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    check-cast v5, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v5, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->validate_simpleval(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    return-void

    :catch_0
    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-interface {p2, v2, v4}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public value_hash_code()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public xgetListValue()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->xgetListValue()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
