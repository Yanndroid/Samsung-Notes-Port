.class public final Lorg/conscrypt/ServerSessionContext;
.super Lorg/conscrypt/AbstractSessionContext;
.source "SourceFile"


# instance fields
.field private persistentCache:Lorg/conscrypt/SSLServerSessionCache;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lorg/conscrypt/AbstractSessionContext;-><init>(I)V

    iget-wide v0, p0, Lorg/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x20

    aput-byte v4, v2, v3

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->SSL_CTX_set_session_id_context(JLorg/conscrypt/AbstractSessionContext;[B)V

    return-void
.end method


# virtual methods
.method public getSessionFromPersistentCache([B)Lorg/conscrypt/NativeSslSession;
    .locals 2

    iget-object v0, p0, Lorg/conscrypt/ServerSessionContext;->persistentCache:Lorg/conscrypt/SSLServerSessionCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/conscrypt/SSLServerSessionCache;->getSessionData([B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    invoke-static {p0, p1, v1, v0}, Lorg/conscrypt/NativeSslSession;->newInstance(Lorg/conscrypt/AbstractSessionContext;[BLjava/lang/String;I)Lorg/conscrypt/NativeSslSession;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractSessionContext;->cacheSession(Lorg/conscrypt/NativeSslSession;)V

    return-object p1

    :cond_0
    return-object v1
.end method

.method public onBeforeAddSession(Lorg/conscrypt/NativeSslSession;)V
    .locals 2

    iget-object v0, p0, Lorg/conscrypt/ServerSessionContext;->persistentCache:Lorg/conscrypt/SSLServerSessionCache;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->toBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/conscrypt/ServerSessionContext;->persistentCache:Lorg/conscrypt/SSLServerSessionCache;

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->toSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/conscrypt/SSLServerSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    :cond_0
    return-void
.end method

.method public onBeforeRemoveSession(Lorg/conscrypt/NativeSslSession;)V
    .locals 0

    return-void
.end method

.method public setPersistentCache(Lorg/conscrypt/SSLServerSessionCache;)V
    .locals 0

    iput-object p1, p0, Lorg/conscrypt/ServerSessionContext;->persistentCache:Lorg/conscrypt/SSLServerSessionCache;

    return-void
.end method
