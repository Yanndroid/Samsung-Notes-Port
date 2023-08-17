.class public abstract Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;
.super Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
.source "SourceFile"


# static fields
.field public static md5:Ljava/security/MessageDigest;


# instance fields
.field public _hashcached:Z

.field public _value:[B

.field public hashcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot find MD5 hash Algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->_hashcached:Z

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->hashcode:I

    return-void
.end method

.method public static lex(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)[B
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/Base64;->decode([B)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "not encoded properly"

    aput-object v2, v0, v1

    const-string v1, "base64Binary"

    invoke-interface {p1, v1, v0}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)[B
    .locals 3

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->lex(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/SchemaType;->matchPatternFacet(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "base 64"

    aput-object v2, p0, v0

    const/4 v0, 0x1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "cvc-datatype-valid.1.1b"

    invoke-interface {p2, p1, p0}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->_value:[B

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/util/Base64;->encode([B)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 1

    check-cast p1, Lorg/apache/xmlbeans/XmlBase64Binary;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlBase64Binary;->getByteArrayValue()[B

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->_value:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getByteArrayValue()[B
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->_value:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v1, v0

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_BASE_64_BINARY:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object v0
.end method

.method public set_ByteArray([B)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->_hashcached:Z

    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->_value:[B

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->_hashcached:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->_value:[B

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->_hashcached:Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->_value:[B

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->lex(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->_value:[B

    :goto_0
    return-void
.end method

.method public value_hash_code()I
    .locals 4

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->_hashcached:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->hashcode:I

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->_hashcached:Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->_value:[B

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iput v2, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->hashcode:I

    return v2

    :cond_1
    sget-object v3, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    aget-byte v2, v1, v2

    aget-byte v0, v1, v0

    add-int/lit8 v0, v0, 0x18

    shl-int v0, v2, v0

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    add-int/lit8 v2, v2, 0x10

    shl-int/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x8

    shl-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBase64Holder;->hashcode:I

    return v0
.end method
