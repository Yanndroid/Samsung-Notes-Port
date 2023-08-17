.class abstract Lio/netty/handler/ssl/ExtendedOpenSslSession;
.super Ljavax/net/ssl/ExtendedSSLSession;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/ssl/OpenSslSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ExtendedOpenSslSession$SSLSessionBindingListenerDecorator;
    }
.end annotation

.annotation build Lio/netty/util/internal/SuppressJava6Requirement;
    reason = "Usage guarded by java version check"
.end annotation


# static fields
.field private static final LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;


# instance fields
.field private final wrapped:Lio/netty/handler/ssl/OpenSslSession;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "SHA512withRSA"

    const-string v1, "SHA512withECDSA"

    const-string v2, "SHA384withRSA"

    const-string v3, "SHA384withECDSA"

    const-string v4, "SHA256withRSA"

    const-string v5, "SHA256withECDSA"

    const-string v6, "SHA224withRSA"

    const-string v7, "SHA224withECDSA"

    const-string v8, "SHA1withRSA"

    const-string v9, "SHA1withECDSA"

    const-string v10, "RSASSA-PSS"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/ssl/OpenSslSession;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/ExtendedSSLSession;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    return-void
.end method


# virtual methods
.method public final getApplicationBufferSize()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    return v0
.end method

.method public final getCipherSuite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCreationTime()J
    .locals 2

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getId()[B
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public final getLastAccessedTime()J
    .locals 2

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLastAccessedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->LOCAL_SUPPORTED_SIGNATURE_ALGORITHMS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getPacketBufferSize()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    return v0
.end method

.method public final getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerPort()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public final getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRequestedServerNames()Ljava/util/List;
.end method

.method public final getSessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getSessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/ExtendedOpenSslSession;->getSessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public getStatusResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0, p1}, Ljavax/net/ssl/SSLSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lio/netty/handler/ssl/ExtendedOpenSslSession$SSLSessionBindingListenerDecorator;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/handler/ssl/ExtendedOpenSslSession$SSLSessionBindingListenerDecorator;

    iget-object p1, p1, Lio/netty/handler/ssl/ExtendedOpenSslSession$SSLSessionBindingListenerDecorator;->delegate:Ljavax/net/ssl/SSLSessionBindingListener;

    :cond_0
    return-object p1
.end method

.method public final getValueNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handshakeFinished([BLjava/lang/String;Ljava/lang/String;[B[[BJJ)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Lio/netty/handler/ssl/OpenSslSession;->handshakeFinished([BLjava/lang/String;Ljava/lang/String;[B[[BJJ)V

    return-void
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    return-void
.end method

.method public final isValid()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v0

    return v0
.end method

.method public final putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/handler/ssl/ExtendedOpenSslSession$SSLSessionBindingListenerDecorator;

    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    invoke-direct {v0, p0, p2}, Lio/netty/handler/ssl/ExtendedOpenSslSession$SSLSessionBindingListenerDecorator;-><init>(Lio/netty/handler/ssl/ExtendedOpenSslSession;Ljavax/net/ssl/SSLSessionBindingListener;)V

    move-object p2, v0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/SSLSession;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final removeValue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0, p1}, Ljavax/net/ssl/SSLSession;->removeValue(Ljava/lang/String;)V

    return-void
.end method

.method public sessionId()Lio/netty/handler/ssl/OpenSslSessionId;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->sessionId()Lio/netty/handler/ssl/OpenSslSessionId;

    move-result-object v0

    return-object v0
.end method

.method public final setLocalCertificate([Ljava/security/cert/Certificate;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0, p1}, Lio/netty/handler/ssl/OpenSslSession;->setLocalCertificate([Ljava/security/cert/Certificate;)V

    return-void
.end method

.method public setSessionId(Lio/netty/handler/ssl/OpenSslSessionId;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0, p1}, Lio/netty/handler/ssl/OpenSslSession;->setSessionId(Lio/netty/handler/ssl/OpenSslSessionId;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtendedOpenSslSession{wrapped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tryExpandApplicationBufferSize(I)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ExtendedOpenSslSession;->wrapped:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0, p1}, Lio/netty/handler/ssl/OpenSslSession;->tryExpandApplicationBufferSize(I)V

    return-void
.end method
