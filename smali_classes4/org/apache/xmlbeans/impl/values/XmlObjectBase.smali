.class public abstract Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
.implements Ljava/io/Serializable;
.implements Lorg/apache/xmlbeans/XmlObject;
.implements Lorg/apache/xmlbeans/SimpleValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedInteriorObject;,
        Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedRootObject;,
        Lorg/apache/xmlbeans/impl/values/XmlObjectBase$ImmutableValueValidationContext;,
        Lorg/apache/xmlbeans/impl/values/XmlObjectBase$ValueOutOfRangeValidationContext;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;

.field private static final FLAGS_DATED:I = 0x2a0

.field private static final FLAGS_ELEMENT:I = 0x7

.field private static final FLAG_ATTRIBUTE:I = 0x8

.field private static final FLAG_COMPLEXCONTENT:I = 0x4000

.field private static final FLAG_COMPLEXTYPE:I = 0x2000

.field private static final FLAG_ELEMENT_DATED:I = 0x200

.field private static final FLAG_FIXED:I = 0x4

.field private static final FLAG_HASDEFAULT:I = 0x2

.field private static final FLAG_IMMUTABLE:I = 0x1000

.field private static final FLAG_ISDEFAULT:I = 0x100

.field private static final FLAG_NIL:I = 0x40

.field private static final FLAG_NILLABLE:I = 0x1

.field private static final FLAG_NIL_DATED:I = 0x80

.field private static final FLAG_NOT_VARIABLE:I = 0x8000

.field private static final FLAG_ORPHANED:I = 0x800

.field private static final FLAG_SETTINGDEFAULT:I = 0x400

.field private static final FLAG_STORE:I = 0x10

.field private static final FLAG_VALIDATE_ON_SET:I = 0x10000

.field private static final FLAG_VALUE_DATED:I = 0x20

.field public static final KIND_SETTERHELPER_ARRAYITEM:S = 0x2s

.field public static final KIND_SETTERHELPER_SINGLETON:S = 0x1s

.field public static final MAJOR_VERSION_NUMBER:S = 0x1s

.field public static final MINOR_VERSION_NUMBER:S = 0x1s

.field private static final _max:Ljava/math/BigInteger;

.field private static final _min:Ljava/math/BigInteger;

.field private static final _toStringOptions:Lorg/apache/xmlbeans/XmlOptions;

.field public static final _voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

.field public static synthetic class$org$apache$xmlbeans$impl$values$XmlObjectBase:Ljava/lang/Class;


# instance fields
.field private _flags:I

.field private _textsource:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->class$org$apache$xmlbeans$impl$values$XmlObjectBase:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.values.XmlObjectBase"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->class$org$apache$xmlbeans$impl$values$XmlObjectBase:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->$assertionsDisabled:Z

    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$ValueOutOfRangeValidationContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$ValueOutOfRangeValidationContext;-><init>(Lorg/apache/xmlbeans/impl/values/XmlObjectBase$1;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_max:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_min:Ljava/math/BigInteger;

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->buildInnerPrettyOptions()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_toStringOptions:Lorg/apache/xmlbeans/XmlOptions;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/XmlObject;

    sput-object v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x41

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    return-void
.end method

.method private static _typedArray([Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 4

    array-length v0, p0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/XmlObject;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->isNoType()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    aget-object v3, p0, v2

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->isNoType()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object p0

    :cond_2
    aget-object v3, p0, v2

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/xmlbeans/SchemaType;->getCommonBaseType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    sget-object v3, Lorg/apache/xmlbeans/XmlObject;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getJavaClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/XmlObject;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object p0

    :cond_5
    array-length v1, p0

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/xmlbeans/XmlObject;

    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_6
    :goto_1
    return-object p0
.end method

.method private final apply_wscanon(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_wscanon_rule()I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/common/XmlWhitespace;->collapse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final buildInnerPrettyOptions()Lorg/apache/xmlbeans/XmlOptions;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    const-string v1, "SAVE_INNER"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    const-string v1, "SAVE_PRETTY_PRINT"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    const-string v1, "SAVE_AGGRESSIVE_NAMESPACES"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    const-string v1, "SAVE_USE_DEFAULT_NAMESPACE"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final check_element_dated()V
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v1, v0, 0x200

    const v2, 0x8000

    if-eqz v1, :cond_1

    and-int v1, v0, v2

    if-nez v1, :cond_1

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->compute_flags()I

    move-result v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v1, v1, -0x208

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueDisconnectedException;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlValueDisconnectedException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int v1, v0, v2

    if-eqz v1, :cond_2

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    :cond_2
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

.method private final comparable_value_spaces(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaType;)Z
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result p1

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result p2

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    if-ne v0, v3, :cond_5

    return v1

    :cond_5
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    if-eq v0, v3, :cond_7

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    if-ne v0, v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_2
    return v2
.end method

.method private final compareValueImpl(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->instanceType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SimpleValue;->instanceType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->isURType()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->isURType()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->compare_to(Lorg/apache/xmlbeans/XmlObject;)I

    move-result p1

    return p1

    :catch_0
    :cond_5
    :goto_0
    return v0
.end method

.method private ensureStore()Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->has_store()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/XmlOptions;->setDocumentType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/XmlObject$Factory;->newInstance(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v2, v0}, Lorg/apache/xmlbeans/XmlCursor;->insertChars(Ljava/lang/String;)V

    return-object v1
.end method

.method private final getPrimitiveTypeName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isNoType()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "unknown"

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "complex"

    return-object v0

    :cond_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRootXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toStartDoc()V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v1
.end method

.method private getTargetForSetter(Lorg/apache/poi/javax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "Cannot set the value of an immutable XmlObject"

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isImmutable()Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Unknown kindSetterHelper: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    :cond_4
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isImmutable()Z

    move-result p1

    if-nez p1, :cond_5

    return-object p2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isRootXmlObject()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return v1
.end method

.method public static java_value(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlObject;->isNil()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    check-cast p0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->instanceType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Nil case should have been handled above"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_3
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getListValue()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    if-eqz v1, :cond_b

    goto/16 :goto_3

    :pswitch_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getCalendarValue()Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getGDurationValue()Lorg/apache/xmlbeans/GDuration;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getDecimalSize()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_9

    const/16 v2, 0x10

    if-eq v0, v2, :cond_8

    const/16 v2, 0x20

    if-eq v0, v2, :cond_7

    const/16 v2, 0x40

    if-eq v0, v2, :cond_6

    packed-switch v0, :pswitch_data_1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "invalid numeric bit count"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :goto_1
    :pswitch_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/Long;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getLongValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/Integer;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getIntValue()I

    move-result p0

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/Short;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getShortValue()S

    move-result p0

    invoke-direct {v0, p0}, Ljava/lang/Short;-><init>(S)V

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/Byte;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getByteValue()B

    move-result p0

    invoke-direct {v0, p0}, Ljava/lang/Byte;-><init>(B)V

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/lang/Double;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getDoubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    :pswitch_6
    new-instance v0, Ljava/lang/Float;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getFloatValue()F

    move-result p0

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0

    :pswitch_7
    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getQNameValue()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getByteArrayValue()[B

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getBooleanValue()Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object p0

    :goto_3
    :pswitch_b
    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "encountered nonprimitive type."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf4240
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static makeInnerOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    const-string p0, "SAVE_INNER"

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    return-object v0
.end method

.method private objSetterHelper(Lorg/apache/xmlbeans/impl/values/XmlObjectBase;Lorg/apache/poi/javax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getTargetForSetter(Lorg/apache/poi/javax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->copy_contents_from(Lorg/apache/xmlbeans/impl/values/TypeStore;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->change_type(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    return-object p1
.end method

.method private preCheck()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->has_store()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->get_locale()Lorg/apache/xmlbeans/impl/common/XmlLocale;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/common/XmlLocale;->noSync()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private schemaField()Lorg/apache/xmlbeans/SchemaField;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->get_schema_field()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final set_commit()V
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit16 v0, v0, -0x141

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    and-int/lit16 v0, v0, -0x2a1

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->invalidate_text()V

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->invalidate_nil()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_textsource:Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method

.method private final set_prepare()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_element_dated()V

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private setterHelper(Lorg/apache/xmlbeans/impl/values/XmlObjectBase;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->copy_contents_from(Lorg/apache/xmlbeans/impl/values/TypeStore;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->change_type(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    return-object p1
.end method

.method private static underlying(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    return-object p0

    :cond_1
    :goto_0
    instance-of v0, p0, Lorg/apache/xmlbeans/DelegateXmlObject;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/apache/xmlbeans/DelegateXmlObject;

    invoke-interface {p0}, Lorg/apache/xmlbeans/DelegateXmlObject;->underlyingXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Non-native implementations of XmlObject should extend FilterXmlObject or implement DelegateXmlObject"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final update_from_wscanon_text(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_1

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->compute_default_text()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setStringValue(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 p1, p1, -0x401

    and-int/lit8 p1, p1, -0x41

    or-int/lit16 p1, p1, 0x100

    :goto_0
    iput p1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    return-void

    :catchall_0
    move-exception p1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    throw p1

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_text(Ljava/lang/String;)V

    iget p1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 p1, p1, -0x141

    goto :goto_0
.end method

.method private validate_immutable(Lorg/apache/xmlbeans/XmlOptions;)Z
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "ERROR_LISTENER"

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    :goto_0
    new-instance v1, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    if-eqz p1, :cond_1

    const-string v0, "VALIDATE_TEXT_ONLY"

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p1

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    array-length v4, p1

    const/4 v5, 0x2

    if-ge v3, v4, :cond_4

    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-lez v4, :cond_3

    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v4, v2, [Ljava/lang/Object;

    aget-object v5, p1, v3

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "cvc-complex-type.4"

    invoke-static {v5, v4, p0}, Lorg/apache/xmlbeans/XmlError;->forObject(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;

    move-result-object v4

    goto :goto_2

    :cond_2
    new-array v4, v5, [Ljava/lang/Object;

    aget-object v5, p1, v3

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaProperty;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object v5

    aput-object v5, v4, v0

    aget-object v5, p1, v3

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "cvc-complex-type.2.4c"

    invoke-static {v5, v4, p0}, Lorg/apache/xmlbeans/XmlError;->forObject(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;

    move-result-object v4

    :goto_2
    invoke-virtual {v1, v4}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result p1

    if-eq p1, v5, :cond_5

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->hasError()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_5
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_textsource:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_6

    const-string p1, ""

    :cond_6
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$ImmutableValueValidationContext;

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$ImmutableValueValidationContext;-><init>(Ljava/util/Collection;Lorg/apache/xmlbeans/XmlObject;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->validate_simpleval(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->hasError()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method private final valueEqualsImpl(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->instanceType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->instanceType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->comparable_value_spaces(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->underlying(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->equal_to(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->equal_to(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v2
.end method


# virtual methods
.method public final _copy()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_copy(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    return-object v0
.end method

.method public final _copy(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->get_schematypeloader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-interface {v1, v0, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->copy(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    return-object p1
.end method

.method public _isComplexContent()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public _isComplexType()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final _set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->underlying(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->stringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/lang/String;)V

    move-object p1, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->copy_contents_from(Lorg/apache/xmlbeans/impl/values/TypeStore;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->change_type(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    :goto_0
    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the value of an immutable XmlObject"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public _validateOnSet()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final attach_store(Lorg/apache/xmlbeans/impl/values/TypeStore;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_textsource:Ljava/lang/Object;

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v1, v0, 0x1000

    if-nez v1, :cond_2

    or-int/lit16 v0, v0, 0x2b0

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->is_attribute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->validate_on_set()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public bigDecimalValue()Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public booleanValue()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getBooleanValue()Z

    move-result v0

    return v0
.end method

.method public build_nil()Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public final build_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v0, v0, 0x140

    if-eqz v0, :cond_4

    const-string p1, ""

    return-object p1

    :cond_4
    if-nez p1, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->has_store()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :cond_6
    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public byteArrayValue()[B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getByteArrayValue()[B

    move-result-object v0

    return-object v0
.end method

.method public byteValue()B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getByteValue()B

    move-result v0

    return v0
.end method

.method public calendarValue()Ljava/util/Calendar;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getCalendarValue()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public changeType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->change_type(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "XML Value Objects cannot have thier type changed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid type (null)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final check_dated()V
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v1, v0, 0x2a0

    if-eqz v1, :cond_b

    and-int/lit16 v1, v0, 0x800

    if-nez v1, :cond_a

    sget-boolean v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_element_dated()V

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->compute_flags()I

    move-result v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v1, v1, -0x208

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    :cond_2
    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_nil()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_4

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw v0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_nil()V

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    iget v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    :goto_2
    iget v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    :cond_6
    if-nez v0, :cond_9

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_wscanon_text()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    new-instance v1, Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;-><init>(Lorg/apache/xmlbeans/impl/values/TypeStore;)V

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->push(Lorg/apache/xmlbeans/impl/values/NamespaceContext;)V

    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->update_from_wscanon_text(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    throw v0

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->update_from_complex_content()V

    :cond_9
    :goto_4
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    goto :goto_5

    :cond_a
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueDisconnectedException;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlValueDisconnectedException;-><init>()V

    throw v0

    :cond_b
    :goto_5
    return-void
.end method

.method public final check_orphaned()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->is_orphaned()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueDisconnectedException;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlValueDisconnectedException;-><init>()V

    throw v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->compareValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final compareValue(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->compareValueImpl(Lorg/apache/xmlbeans/XmlObject;)I

    move-result p1

    return p1

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->monitor()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->compareValueImpl(Lorg/apache/xmlbeans/XmlObject;)I

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->monitor()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lorg/apache/xmlbeans/impl/common/GlobalLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->monitor()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-static {}, Lorg/apache/xmlbeans/impl/common/GlobalLock;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->compareValueImpl(Lorg/apache/xmlbeans/XmlObject;)I

    move-result p1

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    return p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    move v0, v1

    :goto_0
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p1

    :catchall_3
    move-exception p1

    move v0, v1

    :goto_1
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw p1

    :catchall_4
    move-exception p1

    goto :goto_1

    :catchall_5
    move-exception p1

    move v0, v1

    goto :goto_4

    :catch_0
    move-exception p1

    move v0, v1

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :try_start_b
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->compareValueImpl(Lorg/apache/xmlbeans/XmlObject;)I

    move-result p1

    monitor-exit v1

    return p1

    :catchall_6
    move-exception p1

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    throw p1
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_7
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_3
    :try_start_d
    new-instance v1, Lorg/apache/xmlbeans/XmlRuntimeException;

    invoke-direct {v1, p1}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :goto_4
    if-eqz v0, :cond_5

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/GlobalLock;->release()V

    :cond_5
    throw p1
.end method

.method public compare_to(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->equal_to(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public abstract compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
.end method

.method public final copy()Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->preCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final copy(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->preCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_copy(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_copy(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public create_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->get_schematypeloader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->createAttributeType(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaTypeLoader;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    return-object p1
.end method

.method public create_element_user(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->get_schematypeloader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->createElementType(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaTypeLoader;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    return-object p1
.end method

.method public dateValue()Ljava/util/Date;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getDateValue()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public disconnect_store()V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    or-int/lit16 v0, v0, 0xaa0

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    return-void
.end method

.method public documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursorForce()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v1
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public dump()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursorForce()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v1
.end method

.method public elementFlags()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_element_dated()V

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object v0

    return-object v0
.end method

.method public abstract equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/apache/xmlbeans/XmlObject;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p1

    return p1
.end method

.method public execQuery(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->execQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1
.end method

.method public execQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->exec_query(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_typedArray([Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/XmlRuntimeException;

    invoke-direct {p2, p1}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Lorg/apache/xmlbeans/XmlException;)V

    throw p2

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/XmlRuntimeException;

    const-string p2, "Cannot do XQuery on XML Value Objects"

    invoke-direct {p1, p2}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public floatValue()F
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public gDateValue()Lorg/apache/xmlbeans/GDate;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v0

    return-object v0
.end method

.method public gDurationValue()Lorg/apache/xmlbeans/GDuration;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getGDurationValue()Lorg/apache/xmlbeans/GDuration;

    move-result-object v0

    return-object v0
.end method

.method public final generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/javax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;
    .locals 4

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->underlying(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getTargetForSetter(Lorg/apache/poi/javax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getTargetForSetter(Lorg/apache/poi/javax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setStringValue(Ljava/lang/String;)V

    monitor-exit v0

    return-object p2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->preCheck()Z

    move-result v0

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->preCheck()Z

    move-result v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_2

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->objSetterHelper(Lorg/apache/xmlbeans/impl/values/XmlObjectBase;Lorg/apache/poi/javax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->objSetterHelper(Lorg/apache/xmlbeans/impl/values/XmlObjectBase;Lorg/apache/poi/javax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v2

    return-object p1

    :catchall_2
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->objSetterHelper(Lorg/apache/xmlbeans/impl/values/XmlObjectBase;Lorg/apache/poi/javax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-object p1

    :catchall_3
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_4
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->objSetterHelper(Lorg/apache/xmlbeans/impl/values/XmlObjectBase;Lorg/apache/poi/javax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-object p1

    :catchall_4
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_6
    const/4 v0, 0x0

    :try_start_5
    invoke-static {}, Lorg/apache/xmlbeans/impl/common/GlobalLock;->acquire()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    const/4 v1, 0x1

    :try_start_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    :try_start_7
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :try_start_8
    invoke-static {}, Lorg/apache/xmlbeans/impl/common/GlobalLock;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :try_start_9
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->objSetterHelper(Lorg/apache/xmlbeans/impl/values/XmlObjectBase;Lorg/apache/poi/javax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    return-object p1

    :catchall_5
    move-exception p1

    goto :goto_1

    :catchall_6
    move-exception p1

    move v0, v1

    :goto_1
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    throw p1

    :catchall_7
    move-exception p1

    move v0, v1

    :goto_2
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :try_start_d
    throw p1
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    :catchall_8
    move-exception p1

    goto :goto_2

    :catchall_9
    move-exception p1

    move v0, v1

    goto :goto_4

    :catch_0
    move-exception p1

    move v0, v1

    goto :goto_3

    :catchall_a
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_3
    :try_start_e
    new-instance p2, Lorg/apache/xmlbeans/XmlRuntimeException;

    invoke-direct {p2, p1}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    :goto_4
    if-eqz v0, :cond_7

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/GlobalLock;->release()V

    :cond_7
    throw p1
.end method

.method public getBigDecimalValue()Ljava/math/BigDecimal;
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "numeric"

    aput-object v3, v1, v2

    const-string v2, "exception.value.not.supported.s2j"

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->bigDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "boolean"

    aput-object v3, v1, v2

    const-string v2, "exception.value.not.supported.s2j"

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getByteArrayValue()[B
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "byte[]"

    aput-object v3, v1, v2

    const-string v2, "exception.value.not.supported.s2j"

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getByteValue()B
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getIntValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x7f

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/16 v2, -0x80

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw v0
.end method

.method public getCalendarValue()Ljava/util/Calendar;
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "Calendar"

    aput-object v3, v1, v2

    const-string v2, "exception.value.not.supported.s2j"

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getDateValue()Ljava/util/Date;
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "Date"

    aput-object v3, v1, v2

    const-string v2, "exception.value.not.supported.s2j"

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getDomNode()Lorg/w3c/dom/Node;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursorForce()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw v1
.end method

.method public getDoubleValue()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "enum"

    aput-object v3, v1, v2

    const-string v2, "exception.value.not.supported.s2j"

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getFloatValue()F
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getGDateValue()Lorg/apache/xmlbeans/GDate;
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "Date"

    aput-object v3, v1, v2

    const-string v2, "exception.value.not.supported.s2j"

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getGDurationValue()Lorg/apache/xmlbeans/GDuration;
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "Duration"

    aput-object v3, v1, v2

    const-string v2, "exception.value.not.supported.s2j"

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getIntValue()I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getLongValue()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    long-to-int v0, v0

    return v0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw v0
.end method

.method public getListValue()Ljava/util/List;
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "List"

    aput-object v3, v1, v2

    const-string v2, "exception.value.not.supported.s2j"

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getLongValue()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_max:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_2

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_min:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw v0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->java_value(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getQNameValue()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "QName"

    aput-object v3, v1, v2

    const-string v2, "exception.value.not.supported.s2j"

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getShortValue()S
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getIntValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x7fff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/16 v2, -0x8000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isImmutable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_isComplexContent()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->fetch_text(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget v2, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    monitor-exit v0

    return-object v1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->has_store()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getXmlLocale()Lorg/apache/xmlbeans/impl/common/XmlLocale;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->get_locale()Lorg/apache/xmlbeans/impl/common/XmlLocale;

    move-result-object v0

    return-object v0
.end method

.method public get_attribute_field(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaField;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaLocalAttribute;

    move-result-object p1

    return-object p1
.end method

.method public get_attribute_type(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->get_schematypeloader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeType(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaTypeLoader;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    return-object p1
.end method

.method public get_attributeflags(Lorg/apache/poi/javax/xml/namespace/QName;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_isComplexType()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    :goto_1
    or-int p1, v0, v1

    return p1
.end method

.method public get_default_attribute_text(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_isComplexType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_isComplexType()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    return-object p1

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getDefaultText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaLocalAttribute;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getDefaultValue()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p1

    return-object p1
.end method

.method public get_default_element_text(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_isComplexContent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_isComplexContent()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaType;->getElementProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    return-object p1

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getDefaultText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final get_element_ending_delimiters(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/QNameSet;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaType;->getElementProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaSetterDelimiter()Lorg/apache/xmlbeans/QNameSet;

    move-result-object p1

    return-object p1
.end method

.method public get_element_type(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->get_schematypeloader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lorg/apache/xmlbeans/SchemaType;->getElementType(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaTypeLoader;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    return-object p1
.end method

.method public get_elementflags(Lorg/apache/poi/javax/xml/namespace/QName;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_isComplexContent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaType;->getElementProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v0

    if-eq v0, v2, :cond_6

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x4

    :goto_1
    or-int/2addr v0, v3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    or-int p1, v0, v1

    return p1

    :cond_6
    :goto_3
    const/4 p1, -0x1

    return p1
.end method

.method public get_schema_type()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    return-object v0
.end method

.method public final get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_textsource:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xmlbeans/impl/values/TypeStore;

    return-object v0
.end method

.method public get_wscanon_rule()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final get_wscanon_text()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_textsource:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->apply_wscanon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_wscanon_rule()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->fetch_text(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final has_store()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isNil()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->value_hash_code()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initComplexType(ZZ)V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x2000

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p2, :cond_1

    const/16 v1, 0x4000

    :cond_1
    or-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    return-void
.end method

.method public init_flags(Lorg/apache/xmlbeans/SchemaProperty;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v4

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    :goto_1
    or-int/2addr v2, v4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result p1

    if-nez p1, :cond_4

    move v1, v3

    :cond_4
    or-int p1, v2, v1

    const v1, 0x8000

    or-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    :cond_5
    :goto_2
    return-void
.end method

.method public instanceType()Lorg/apache/xmlbeans/SchemaType;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isNil()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public intValue()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getIntValue()I

    move-result v0

    return v0
.end method

.method public final invalidate_element_order()V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    or-int/lit16 v0, v0, 0x2a0

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    return-void
.end method

.method public final invalidate_nilvalue()V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    or-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    return-void
.end method

.method public final invalidate_value()V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    return-void
.end method

.method public final isDefault()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDefaultable()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_element_dated()V

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFixed()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_element_dated()V

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImmutable()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstanceOf(Lorg/apache/xmlbeans/SchemaType;)Z
    .locals 4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->instanceType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getUnionConstituentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->instanceType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public final isNil()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isNillable()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_element_dated()V

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public is_child_element_order_sensitive()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_isComplexType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isOrderSensitive()Z

    move-result v0

    return v0
.end method

.method public is_defaultable_ws(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final is_orphaned()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listValue()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getListValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final monitor()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->has_store()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->get_locale()Lorg/apache/xmlbeans/impl/common/XmlLocale;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public newCursor()Lorg/apache/xmlbeans/XmlCursor;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getXmlLocale()Lorg/apache/xmlbeans/impl/common/XmlLocale;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/common/XmlLocale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/common/XmlLocale;->enter()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->new_cursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/common/XmlLocale;->exit()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/common/XmlLocale;->exit()V

    throw v1

    :cond_0
    monitor-enter v0

    :try_start_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/common/XmlLocale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->new_cursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/common/XmlLocale;->exit()V

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/common/XmlLocale;->exit()V

    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XML Value Objects cannot create cursors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newCursorForce()Lorg/apache/xmlbeans/XmlCursor;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->ensureStore()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public newDomNode()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newDomNode(Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public newDomNode(Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3c/dom/Node;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursorForce()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->makeInnerOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newDomNode(Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3c/dom/Node;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newInputStream(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInputStream(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursorForce()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->makeInnerOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newInputStream(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1
.end method

.method public newReader()Ljava/io/Reader;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newReader(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public newReader(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/Reader;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursorForce()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->makeInnerOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newReader(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1
.end method

.method public newXMLInputStream()Lorg/apache/xmlbeans/xml/stream/XMLInputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newXMLInputStream(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/xml/stream/XMLInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newXMLInputStream(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/xml/stream/XMLInputStream;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursorForce()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->makeInnerOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newXMLInputStream(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/xml/stream/XMLInputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1
.end method

.method public newXMLStreamReader()Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newXMLStreamReader(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public newXMLStreamReader(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursorForce()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->makeInnerOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newXMLStreamReader(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1
.end method

.method public new_visitor()Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_isComplexContent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;-><init>(Lorg/apache/xmlbeans/SchemaParticle;)V

    return-object v0
.end method

.method public objectSet(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public objectValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public qNameValue()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getQNameValue()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public save(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->save(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method public save(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursorForce()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->makeInnerOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method public save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursorForce()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->makeInnerOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1
.end method

.method public save(Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->save(Ljava/io/Writer;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method public save(Ljava/io/Writer;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursorForce()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->makeInnerOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/Writer;Lorg/apache/xmlbeans/XmlOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1
.end method

.method public save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method public save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursorForce()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-static {p3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->makeInnerOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/apache/xmlbeans/XmlOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1
.end method

.method public abstract schemaType()Lorg/apache/xmlbeans/SchemaType;
.end method

.method public selectAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->selectAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1
.end method

.method public selectAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->isContainer()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v2

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstAttribute()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :cond_2
    :try_start_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextAttribute()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    :cond_3
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1
.end method

.method public selectAttributes(Lorg/apache/xmlbeans/QNameSet;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstAttribute()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextAttribute()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :cond_4
    :try_start_2
    sget-object p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/xmlbeans/XmlObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public selectChildren(Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->selectChildren(Lorg/apache/poi/javax/xml/namespace/QName;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1
.end method

.method public selectChildren(Lorg/apache/poi/javax/xml/namespace/QName;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :cond_3
    :try_start_2
    sget-object p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/xmlbeans/XmlObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1
.end method

.method public selectChildren(Lorg/apache/xmlbeans/QNameSet;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    sget-boolean v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->isContainer()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :cond_6
    :try_start_2
    sget-object p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/xmlbeans/XmlObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->selectPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1
.end method

.method public selectPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0, p1, p2}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->hasNextSelection()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getSelectionCount()I

    move-result p1

    new-array p1, p1, [Lorg/apache/xmlbeans/XmlObject;

    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    aput-object v1, p1, p2

    if-nez v1, :cond_2

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    aput-object v1, p1, p2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/apache/xmlbeans/XmlRuntimeException;

    const-string p2, "Path must select only elements and attributes"

    invoke-direct {p1, p2}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_typedArray([Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1

    :cond_4
    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueDisconnectedException;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/values/XmlValueDisconnectedException;-><init>()V

    throw p1
.end method

.method public final set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->underlying(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setStringValue(Ljava/lang/String;)V

    move-object p1, p0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->preCheck()Z

    move-result v0

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->preCheck()Z

    move-result v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_2

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setterHelper(Lorg/apache/xmlbeans/impl/values/XmlObjectBase;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setterHelper(Lorg/apache/xmlbeans/impl/values/XmlObjectBase;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setterHelper(Lorg/apache/xmlbeans/impl/values/XmlObjectBase;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setterHelper(Lorg/apache/xmlbeans/impl/values/XmlObjectBase;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    monitor-exit v0

    goto :goto_1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_6
    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Lorg/apache/xmlbeans/impl/common/GlobalLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    :try_start_5
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-static {}, Lorg/apache/xmlbeans/impl/common/GlobalLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setterHelper(Lorg/apache/xmlbeans/impl/values/XmlObjectBase;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :goto_1
    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    return-object p1

    :catchall_3
    move-exception p1

    goto :goto_2

    :catchall_4
    move-exception p1

    move v0, v1

    :goto_2
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw p1

    :catchall_5
    move-exception p1

    move v0, v1

    :goto_3
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    throw p1
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catchall_6
    move-exception p1

    goto :goto_3

    :catchall_7
    move-exception p1

    move v0, v1

    goto :goto_5

    :catch_0
    move-exception p1

    move v0, v1

    goto :goto_4

    :catchall_8
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_4
    :try_start_c
    new-instance v1, Lorg/apache/xmlbeans/XmlRuntimeException;

    invoke-direct {v1, p1}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :goto_5
    if-eqz v0, :cond_7

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/GlobalLock;->release()V

    :cond_7
    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the value of an immutable XmlObject"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(B)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setByteValue(B)V

    return-void
.end method

.method public set(D)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setDoubleValue(D)V

    return-void
.end method

.method public set(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setFloatValue(F)V

    return-void
.end method

.method public set(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setIntValue(I)V

    return-void
.end method

.method public set(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setLongValue(J)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/math/BigDecimal;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setBigDecimalValue(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public set(Ljava/math/BigInteger;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setBigIntegerValue(Ljava/math/BigInteger;)V

    return-void
.end method

.method public set(Ljava/util/Calendar;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setCalendarValue(Ljava/util/Calendar;)V

    return-void
.end method

.method public set(Ljava/util/Date;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setDateValue(Ljava/util/Date;)V

    return-void
.end method

.method public set(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setListValue(Ljava/util/List;)V

    return-void
.end method

.method public set(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setQNameValue(Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-void
.end method

.method public set(Lorg/apache/xmlbeans/GDateSpecification;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setGDateValue(Lorg/apache/xmlbeans/GDateSpecification;)V

    return-void
.end method

.method public set(Lorg/apache/xmlbeans/GDurationSpecification;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setGDurationValue(Lorg/apache/xmlbeans/GDurationSpecification;)V

    return-void
.end method

.method public set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    return-void
.end method

.method public set(S)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setShortValue(S)V

    return-void
.end method

.method public set(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setBooleanValue(Z)V

    return-void
.end method

.method public set([B)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setByteArrayValue([B)V

    return-void
.end method

.method public final setBigDecimalValue(Ljava/math/BigDecimal;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_BigDecimal(Ljava/math/BigDecimal;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setBigIntegerValue(Ljava/math/BigInteger;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_BigInteger(Ljava/math/BigInteger;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setBooleanValue(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_boolean(Z)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setByteArrayValue([B)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_ByteArray([B)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setByteValue(B)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_byte(B)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setCalendarValue(Ljava/util/Calendar;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_Calendar(Ljava/util/Calendar;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setDateValue(Ljava/util/Date;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_Date(Ljava/util/Date;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setDoubleValue(D)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_double(D)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_enum(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setFloatValue(F)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_float(F)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setGDateValue(Lorg/apache/xmlbeans/GDate;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_GDate(Lorg/apache/xmlbeans/GDateSpecification;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setGDateValue(Lorg/apache/xmlbeans/GDateSpecification;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_GDate(Lorg/apache/xmlbeans/GDateSpecification;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setGDurationValue(Lorg/apache/xmlbeans/GDuration;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_GDuration(Lorg/apache/xmlbeans/GDurationSpecification;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setGDurationValue(Lorg/apache/xmlbeans/GDurationSpecification;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_GDuration(Lorg/apache/xmlbeans/GDurationSpecification;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setImmutable()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v1, v0, 0x1010

    if-nez v1, :cond_0

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final setIntValue(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_int(I)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setListValue(Ljava/util/List;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_list(Ljava/util/List;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setLongValue(J)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_long(J)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setNil()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlValueNotNillableException;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/values/XmlValueNotNillableException;-><init>()V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_nil()V

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->invalidate_text()V

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v1, v1, -0x2a1

    iput v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->invalidate_nil()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_textsource:Ljava/lang/Object;

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setObjectValue(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    return-void

    :cond_0
    instance-of v0, p1, Lorg/apache/xmlbeans/XmlObject;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setStringValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lorg/apache/xmlbeans/StringEnumAbstractBase;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/xmlbeans/StringEnumAbstractBase;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setBigIntegerValue(Ljava/math/BigInteger;)V

    goto/16 :goto_0

    :cond_4
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setBigDecimalValue(Ljava/math/BigDecimal;)V

    goto/16 :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setByteValue(B)V

    goto/16 :goto_0

    :cond_6
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setShortValue(S)V

    goto/16 :goto_0

    :cond_7
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setIntValue(I)V

    goto/16 :goto_0

    :cond_8
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setLongValue(J)V

    goto/16 :goto_0

    :cond_9
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setBooleanValue(Z)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setFloatValue(F)V

    goto :goto_0

    :cond_b
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_c

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setDoubleValue(D)V

    goto :goto_0

    :cond_c
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_d

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setCalendarValue(Ljava/util/Calendar;)V

    goto :goto_0

    :cond_d
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setDateValue(Ljava/util/Date;)V

    goto :goto_0

    :cond_e
    instance-of v0, p1, Lorg/apache/xmlbeans/GDateSpecification;

    if-eqz v0, :cond_f

    check-cast p1, Lorg/apache/xmlbeans/GDateSpecification;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setGDateValue(Lorg/apache/xmlbeans/GDateSpecification;)V

    goto :goto_0

    :cond_f
    instance-of v0, p1, Lorg/apache/xmlbeans/GDurationSpecification;

    if-eqz v0, :cond_10

    check-cast p1, Lorg/apache/xmlbeans/GDurationSpecification;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setGDurationValue(Lorg/apache/xmlbeans/GDurationSpecification;)V

    goto :goto_0

    :cond_10
    instance-of v0, p1, Lorg/apache/poi/javax/xml/namespace/QName;

    if-eqz v0, :cond_11

    check-cast p1, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setQNameValue(Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_0

    :cond_11
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_12

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setListValue(Ljava/util/List;)V

    goto :goto_0

    :cond_12
    instance-of v0, p1, [B

    if-eqz v0, :cond_13

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setByteArrayValue([B)V

    :goto_0
    return-void

    :cond_13
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t set union object of class : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setQNameValue(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_QName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setShortValue(S)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_short(S)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setStringValue(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_String(Ljava/lang/String;)V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setValidateOnSet()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    return-void
.end method

.method public set_BigDecimal(Ljava/math/BigDecimal;)V
    .locals 3

    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "numeric"

    aput-object v2, v0, v1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "exception.value.not.supported.j2s"

    invoke-direct {p1, v1, v0}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_BigInteger(Ljava/math/BigInteger;)V
    .locals 1

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_BigDecimal(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public set_ByteArray([B)V
    .locals 3

    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "byte[]"

    aput-object v2, v0, v1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "exception.value.not.supported.j2s"

    invoke-direct {p1, v1, v0}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_Calendar(Ljava/util/Calendar;)V
    .locals 3

    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Calendar"

    aput-object v2, v0, v1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "exception.value.not.supported.j2s"

    invoke-direct {p1, v1, v0}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_ComplexXml(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 3

    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "complex content"

    aput-object v2, v0, v1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "exception.value.not.supported.j2s"

    invoke-direct {p1, v1, v0}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_Date(Ljava/util/Date;)V
    .locals 3

    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Date"

    aput-object v2, v0, v1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "exception.value.not.supported.j2s"

    invoke-direct {p1, v1, v0}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_GDate(Lorg/apache/xmlbeans/GDateSpecification;)V
    .locals 3

    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Date"

    aput-object v2, v0, v1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "exception.value.not.supported.j2s"

    invoke-direct {p1, v1, v0}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_GDuration(Lorg/apache/xmlbeans/GDurationSpecification;)V
    .locals 3

    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Duration"

    aput-object v2, v0, v1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "exception.value.not.supported.j2s"

    invoke-direct {p1, v1, v0}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_QName(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 3

    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "QName"

    aput-object v2, v0, v1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "exception.value.not.supported.j2s"

    invoke-direct {p1, v1, v0}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_String(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v1, v0, 0x1000

    if-nez v1, :cond_4

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->apply_wscanon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->update_from_wscanon_text(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_2

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->store_text(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->invalidate_nil()V

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_textsource:Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public set_b64([B)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_ByteArray([B)V

    return-void
.end method

.method public set_boolean(Z)V
    .locals 3

    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "boolean"

    aput-object v2, v0, v1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "exception.value.not.supported.j2s"

    invoke-direct {p1, v1, v0}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_byte(B)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_int(I)V

    return-void
.end method

.method public set_char(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_String(Ljava/lang/String;)V

    return-void
.end method

.method public set_double(D)V
    .locals 1

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_BigDecimal(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public set_enum(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
    .locals 3

    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "enum"

    aput-object v2, v0, v1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "exception.value.not.supported.j2s"

    invoke-direct {p1, v1, v0}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_float(F)V
    .locals 3

    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_BigDecimal(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public set_hex([B)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_ByteArray([B)V

    return-void
.end method

.method public set_int(I)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_long(J)V

    return-void
.end method

.method public set_list(Ljava/util/List;)V
    .locals 3

    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "List"

    aput-object v2, v0, v1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "exception.value.not.supported.j2s"

    invoke-direct {p1, v1, v0}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_long(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_BigInteger(Ljava/math/BigInteger;)V

    return-void
.end method

.method public final set_newValue(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 5

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->isNil()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    instance-of v0, p1, Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-eqz v0, :cond_f

    check-cast p1, Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-object v0, p1

    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->instanceType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Nil case should have been handled already"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->xgetListValue()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_list(Ljava/util/List;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v3, 0x1

    if-nez v1, :cond_5

    :try_start_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v4

    if-ne v4, v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_GDate(Lorg/apache/xmlbeans/GDateSpecification;)V

    goto/16 :goto_4

    :pswitch_1
    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->getGDurationValue()Lorg/apache/xmlbeans/GDuration;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_GDuration(Lorg/apache/xmlbeans/GDurationSpecification;)V

    goto/16 :goto_4

    :pswitch_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_String(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_3
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getDecimalSize()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_a

    const/16 v3, 0x10

    if-eq v0, v3, :cond_9

    const/16 v3, 0x20

    if-eq v0, v3, :cond_8

    const/16 v3, 0x40

    if-eq v0, v3, :cond_7

    packed-switch v0, :pswitch_data_1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "invalid numeric bit count"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :goto_2
    :pswitch_4
    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_BigDecimal(Ljava/math/BigDecimal;)V

    goto/16 :goto_4

    :pswitch_5
    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_BigInteger(Ljava/math/BigInteger;)V

    goto/16 :goto_4

    :cond_7
    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->getLongValue()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_long(J)V

    goto/16 :goto_4

    :cond_8
    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->getIntValue()I

    move-result p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_int(I)V

    goto/16 :goto_4

    :cond_9
    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->getShortValue()S

    move-result p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_short(S)V

    goto/16 :goto_4

    :cond_a
    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->getByteValue()B

    move-result p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_byte(B)V

    goto/16 :goto_4

    :pswitch_6
    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->getDoubleValue()D

    move-result-wide v0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_double(D)V

    goto/16 :goto_4

    :pswitch_7
    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->getFloatValue()F

    move-result p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_float(F)V

    goto :goto_4

    :pswitch_8
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_notation(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_9
    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->getQNameValue()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_QName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_4

    :pswitch_a
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_text(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_b
    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->getByteArrayValue()[B

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_hex([B)V

    goto :goto_4

    :pswitch_c
    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->getByteArrayValue()[B

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_b64([B)V

    goto :goto_4

    :pswitch_d
    check-cast p1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SimpleValue;->getBooleanValue()Z

    move-result p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_boolean(Z)V

    goto :goto_4

    :pswitch_e
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;-><init>(Lorg/apache/xmlbeans/XmlObject;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->push(Lorg/apache/xmlbeans/impl/values/NamespaceContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_3

    :cond_b
    move v3, v0

    :goto_3
    :try_start_2
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_xmlanysimple(Lorg/apache/xmlbeans/XmlAnySimpleType;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_c

    :try_start_3
    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_c
    :goto_4
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_commit()V

    monitor-exit v2

    return-void

    :catchall_1
    move-exception p1

    if-eqz v3, :cond_d

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_d
    throw p1

    :goto_5
    if-nez v1, :cond_e

    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "encountered nonprimitive type."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_e
    monitor-exit v2

    goto :goto_7

    :goto_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :catchall_2
    move-exception p1

    goto :goto_6

    :cond_f
    :goto_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Complex type unexpected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    :goto_8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setNil()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf4240
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public abstract set_nil()V
.end method

.method public set_notation(Ljava/lang/String;)V
    .locals 0

    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>()V

    throw p1
.end method

.method public set_short(S)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_int(I)V

    return-void
.end method

.method public abstract set_text(Ljava/lang/String;)V
.end method

.method public set_xmlanysimple(Lorg/apache/xmlbeans/XmlAnySimpleType;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_String(Ljava/lang/String;)V

    return-void
.end method

.method public shortValue()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getShortValue()S

    move-result v0

    return v0
.end method

.method public stringValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substitute(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->substitute(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "XML Value Objects cannot be used with substitution"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid type (null)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid name (null)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->ensureStore()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_toStringOptions:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public update_from_complex_content()V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const-string v1, "Complex content"

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final uses_invalidate_value()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->validate(Lorg/apache/xmlbeans/XmlOptions;)Z

    move-result v0

    return v0
.end method

.method public validate(Lorg/apache/xmlbeans/XmlOptions;)Z
    .locals 9

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_1

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->validate_immutable(Lorg/apache/xmlbeans/XmlOptions;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "XML objects with no underlying store cannot be validated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_flags:I

    and-int/lit16 v1, v1, 0x800

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    new-instance v8, Lorg/apache/xmlbeans/impl/validator/Validator;

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->get_schematypeloader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v5

    const/4 v7, 0x0

    move-object v2, v8

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/xmlbeans/impl/validator/Validator;-><init>(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaField;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Ljava/util/Collection;)V

    invoke-interface {v1, v8}, Lorg/apache/xmlbeans/impl/values/TypeStore;->validate(Lorg/apache/xmlbeans/impl/common/ValidatorListener;)V

    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/validator/Validator;->isValid()Z

    move-result p1

    monitor-exit v0

    return p1

    :cond_2
    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueDisconnectedException;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/values/XmlValueDisconnectedException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public validate_now()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 0

    return-void
.end method

.method public final valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->valueEqualsImpl(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->monitor()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->valueEqualsImpl(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->monitor()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lorg/apache/xmlbeans/impl/common/GlobalLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->monitor()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-static {}, Lorg/apache/xmlbeans/impl/common/GlobalLock;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->valueEqualsImpl(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p1

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    return p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    move v0, v1

    :goto_0
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p1

    :catchall_3
    move-exception p1

    move v0, v1

    :goto_1
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw p1

    :catchall_4
    move-exception p1

    goto :goto_1

    :catchall_5
    move-exception p1

    move v0, v1

    goto :goto_4

    :catch_0
    move-exception p1

    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :try_start_b
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->valueEqualsImpl(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_6
    move-exception p1

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    throw p1
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_7
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_3
    :try_start_d
    new-instance v1, Lorg/apache/xmlbeans/XmlRuntimeException;

    invoke-direct {v1, p1}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :goto_4
    if-eqz v0, :cond_4

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/GlobalLock;->release()V

    :cond_4
    throw p1
.end method

.method public valueHashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->value_hash_code()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract value_hash_code()I
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->isRootXmlObject()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedRootObject;

    invoke-direct {v1, p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedRootObject;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/values/XmlObjectBase$1;)V

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedInteriorObject;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getRootXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedInteriorObject;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/values/XmlObjectBase$1;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetListValue()Ljava/util/List;
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "List"

    aput-object v3, v1, v2

    const-string v2, "exception.value.not.supported.s2j"

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueNotSupportedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public xlistValue()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->xgetListValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public xmlText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursorForce()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->makeInnerOptions(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1
.end method
