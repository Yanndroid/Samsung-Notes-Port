.class final Lorg/conscrypt/ExternalSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/conscrypt/ConscryptSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ExternalSession$Provider;
    }
.end annotation


# instance fields
.field private final provider:Lorg/conscrypt/ExternalSession$Provider;

.field private final values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/conscrypt/ExternalSession$Provider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    return-void
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    return v0
.end method

.method public getApplicationProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/conscrypt/ConscryptSession;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()[B
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 2

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLastAccessedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPacketBufferSize()I
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/conscrypt/ConscryptSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPeerSignedCertificateTimestamp()[B
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/conscrypt/ConscryptSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedServerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/conscrypt/ConscryptSession;->getRequestedServerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

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

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/conscrypt/ConscryptSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    return-void
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->provider:Lorg/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lorg/conscrypt/ExternalSession$Provider;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v0

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p0, p1, p2}, Lorg/conscrypt/ExternalSession;->putValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public putValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, p3, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_0

    check-cast p3, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p1, p2}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_0
    instance-of p3, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz p3, :cond_1

    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance p3, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {p3, p1, p2}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, p3}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p0, p1}, Lorg/conscrypt/ExternalSession;->removeValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    return-void
.end method

.method public removeValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p1, p2}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
