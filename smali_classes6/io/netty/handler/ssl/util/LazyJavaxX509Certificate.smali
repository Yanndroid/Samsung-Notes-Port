.class public final Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;
.super Ljavax/security/cert/X509Certificate;
.source "SourceFile"


# instance fields
.field private final bytes:[B

.field private wrapped:Ljavax/security/cert/X509Certificate;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljavax/security/cert/X509Certificate;-><init>()V

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->bytes:[B

    return-void
.end method

.method private unwrap()Ljavax/security/cert/X509Certificate;
    .locals 2

    iget-object v0, p0, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->wrapped:Ljavax/security/cert/X509Certificate;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->bytes:[B

    invoke-static {v0}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->wrapped:Ljavax/security/cert/X509Certificate;
    :try_end_0
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public checkValidity()V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->checkValidity()V

    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->bytes:[B

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getSigAlgParams()[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getVersion()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/LazyJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    return-void
.end method
