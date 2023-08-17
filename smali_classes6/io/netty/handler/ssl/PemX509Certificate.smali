.class public final Lio/netty/handler/ssl/PemX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/ssl/PemEncoded;


# static fields
.field private static final BEGIN_CERT:[B

.field private static final END_CERT:[B


# instance fields
.field private final content:Lio/netty/buffer/ByteBuf;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v1, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lio/netty/handler/ssl/PemX509Certificate;->BEGIN_CERT:[B

    const-string v1, "\n-----END CERTIFICATE-----\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/PemX509Certificate;->END_CERT:[B

    return-void
.end method

.method private constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    const-string v0, "content"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/ByteBuf;

    iput-object p1, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method private static append(Lio/netty/buffer/ByteBufAllocator;ZLio/netty/handler/ssl/PemEncoded;ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-interface {p2}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p2

    if-nez p4, :cond_0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p4

    mul-int/2addr p4, p3

    invoke-static {p0, p1, p4}, Lio/netty/handler/ssl/PemX509Certificate;->newBuffer(Lio/netty/buffer/ByteBufAllocator;ZI)Lio/netty/buffer/ByteBuf;

    move-result-object p4

    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p4, p0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    return-object p4
.end method

.method private static append(Lio/netty/buffer/ByteBufAllocator;ZLjava/security/cert/X509Certificate;ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    :try_start_0
    invoke-static {p0, p2}, Lio/netty/handler/ssl/SslUtils;->toBase64(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p4, :cond_0

    :try_start_1
    sget-object p4, Lio/netty/handler/ssl/PemX509Certificate;->BEGIN_CERT:[B

    array-length p4, p4

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    add-int/2addr p4, v1

    sget-object v1, Lio/netty/handler/ssl/PemX509Certificate;->END_CERT:[B

    array-length v1, v1

    add-int/2addr p4, v1

    mul-int/2addr p4, p3

    invoke-static {p0, p1, p4}, Lio/netty/handler/ssl/PemX509Certificate;->newBuffer(Lio/netty/buffer/ByteBufAllocator;ZI)Lio/netty/buffer/ByteBuf;

    move-result-object p4

    :cond_0
    sget-object p0, Lio/netty/handler/ssl/PemX509Certificate;->BEGIN_CERT:[B

    invoke-virtual {p4, p0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p4, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    sget-object p0, Lio/netty/handler/ssl/PemX509Certificate;->END_CERT:[B

    invoke-virtual {p4, p0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    return-object p4

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p0
.end method

.method private static newBuffer(Lio/netty/buffer/ByteBufAllocator;ZI)Lio/netty/buffer/ByteBuf;
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static varargs toPEM(Lio/netty/buffer/ByteBufAllocator;Z[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/PemEncoded;
    .locals 6

    const-string v0, "chain"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNonEmpty([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget-object v0, p2, v2

    instance-of v1, v0, Lio/netty/handler/ssl/PemEncoded;

    if-eqz v1, :cond_0

    check-cast v0, Lio/netty/handler/ssl/PemEncoded;

    invoke-interface {v0}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p2

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p2, v3

    if-eqz v4, :cond_2

    instance-of v5, v4, Lio/netty/handler/ssl/PemEncoded;

    if-eqz v5, :cond_1

    check-cast v4, Lio/netty/handler/ssl/PemEncoded;

    array-length v5, p2

    invoke-static {p0, p1, v4, v5, v0}, Lio/netty/handler/ssl/PemX509Certificate;->append(Lio/netty/buffer/ByteBufAllocator;ZLio/netty/handler/ssl/PemEncoded;ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_1

    :cond_1
    array-length v5, p2

    invoke-static {p0, p1, v4, v5, v0}, Lio/netty/handler/ssl/PemX509Certificate;->append(Lio/netty/buffer/ByteBufAllocator;ZLjava/security/cert/X509Certificate;ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null element in chain: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lio/netty/handler/ssl/PemValue;

    invoke-direct {p0, v0, v2}, Lio/netty/handler/ssl/PemValue;-><init>(Lio/netty/buffer/ByteBuf;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    :cond_4
    throw p0
.end method

.method public static valueOf(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1

    new-instance v0, Lio/netty/handler/ssl/PemX509Certificate;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/PemX509Certificate;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public static valueOf([B)Lio/netty/handler/ssl/PemX509Certificate;
    .locals 0

    invoke-static {p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-static {p0}, Lio/netty/handler/ssl/PemX509Certificate;->valueOf(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkValidity()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public content()Lio/netty/buffer/ByteBuf;
    .locals 2

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    return-object v0

    :cond_0
    new-instance v1, Lio/netty/util/IllegalReferenceCountException;

    invoke-direct {v1, v0}, Lio/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v1
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->copy()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->copy()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/PemX509Certificate;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->duplicate()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->duplicate()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/PemX509Certificate;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lio/netty/handler/ssl/PemX509Certificate;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lio/netty/handler/ssl/PemX509Certificate;

    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    iget-object p1, p1, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBasicConstraints()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getEncoded()[B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSigAlgParams()[B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSignature()[B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTBSCertificate()[B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getVersion()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSensitive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refCnt()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0, p1}, Lio/netty/util/ReferenceCounted;->release(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemEncoded;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1

    new-instance v0, Lio/netty/handler/ssl/PemX509Certificate;

    invoke-direct {v0, p1}, Lio/netty/handler/ssl/PemX509Certificate;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->retain()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->retain(I)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->retain()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/ssl/PemEncoded;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->retain(I)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public retain(I)Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->retain()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->retain(I)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->retainedDuplicate()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->retainedDuplicate()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/PemX509Certificate;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->touch()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->touch()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemEncoded;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->touch()Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->touch()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
