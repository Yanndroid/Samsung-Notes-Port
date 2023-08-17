.class public abstract Lio/netty/handler/ssl/OpenSslSessionContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# instance fields
.field public final context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

.field private final mask:J

.field private final provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

.field private final sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

.field private final stats:Lio/netty/handler/ssl/OpenSslSessionStats;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;JLio/netty/handler/ssl/OpenSslSessionCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iput-object p2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    iput-wide p3, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->mask:J

    new-instance p2, Lio/netty/handler/ssl/OpenSslSessionStats;

    invoke-direct {p2, p1}, Lio/netty/handler/ssl/OpenSslSessionStats;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)V

    iput-object p2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->stats:Lio/netty/handler/ssl/OpenSslSessionStats;

    iput-object p5, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    iget-wide p1, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {p1, p2, p5}, Lio/netty/internal/tcnative/SSLContext;->setSSLSessionCache(JLio/netty/internal/tcnative/SSLSessionCache;)V

    return-void
.end method

.method public static synthetic access$000(Lio/netty/handler/ssl/OpenSslSessionContext;)Lio/netty/handler/ssl/OpenSslSessionCache;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionCache;->clear()V

    return-void
.end method

.method public getIds()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lio/netty/handler/ssl/OpenSslSessionContext$1;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/OpenSslSessionContext$1;-><init>(Lio/netty/handler/ssl/OpenSslSessionContext;)V

    return-object v0
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 2

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    new-instance v1, Lio/netty/handler/ssl/OpenSslSessionId;

    invoke-direct {v1, p1}, Lio/netty/handler/ssl/OpenSslSessionId;-><init>([B)V

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/OpenSslSessionCache;->getSession(Lio/netty/handler/ssl/OpenSslSessionId;)Lio/netty/handler/ssl/OpenSslSession;

    move-result-object p1

    return-object p1
.end method

.method public getSessionCacheSize()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionCache;->getSessionCacheSize()I

    move-result v0

    return v0
.end method

.method public getSessionTimeout()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionCache;->getSessionTimeout()I

    move-result v0

    return v0
.end method

.method public final isInCache(Lio/netty/handler/ssl/OpenSslSessionId;)Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/OpenSslSessionCache;->containsSessionWithId(Lio/netty/handler/ssl/OpenSslSessionId;)Z

    move-result p1

    return p1
.end method

.method public isSessionCacheEnabled()Z
    .locals 5

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v0, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v1, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->getSessionCacheMode(J)J

    move-result-wide v1

    iget-wide v3, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->mask:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final removeFromCache(Lio/netty/handler/ssl/OpenSslSessionId;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/OpenSslSessionCache;->removeSessionWithId(Lio/netty/handler/ssl/OpenSslSessionId;)V

    return-void
.end method

.method public setSessionCacheEnabled(Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->mask:J

    sget-wide v2, Lio/netty/internal/tcnative/SSL;->SSL_SESS_CACHE_NO_INTERNAL_LOOKUP:J

    or-long/2addr v0, v2

    sget-wide v2, Lio/netty/internal/tcnative/SSL;->SSL_SESS_CACHE_NO_INTERNAL_STORE:J

    or-long/2addr v0, v2

    goto :goto_0

    :cond_0
    sget-wide v0, Lio/netty/internal/tcnative/SSL;->SSL_SESS_CACHE_OFF:J

    :goto_0
    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v2, v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v3, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v3, v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v3, v4, v0, v1}, Lio/netty/internal/tcnative/SSLContext;->setSessionCacheMode(JJ)J

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {p1}, Lio/netty/handler/ssl/OpenSslSessionCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public setSessionCacheSize(I)V
    .locals 1

    const-string v0, "size"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/OpenSslSessionCache;->setSessionCacheSize(I)V

    return-void
.end method

.method public setSessionFromCache(Ljava/lang/String;IJ)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v0, p3, p4, p1, p2}, Lio/netty/handler/ssl/OpenSslSessionCache;->setSession(JLjava/lang/String;I)V

    return-void
.end method

.method public setSessionTimeout(I)V
    .locals 5

    const-string v0, "seconds"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v0, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v1, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    int-to-long v3, p1

    invoke-static {v1, v2, v3, v4}, Lio/netty/internal/tcnative/SSLContext;->setSessionCacheTimeout(JJ)J

    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v1, p1}, Lio/netty/handler/ssl/OpenSslSessionCache;->setSessionTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public setTicketKeys([B)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_1

    array-length v0, p1

    div-int/lit8 v0, v0, 0x30

    new-array v1, v0, [Lio/netty/internal/tcnative/SessionTicketKey;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    const/16 v4, 0x10

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    add-int/2addr v3, v4

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    add-int/lit8 v2, v2, 0x10

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    add-int/2addr v3, v4

    new-instance v4, Lio/netty/internal/tcnative/SessionTicketKey;

    invoke-direct {v4, v5, v6, v7}, Lio/netty/internal/tcnative/SessionTicketKey;-><init>([B[B[B)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object p1, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TICKET:I

    invoke-static {v2, v3, v0}, Lio/netty/internal/tcnative/SSLContext;->clearOptions(JI)V

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v2, v3, v1}, Lio/netty/internal/tcnative/SSLContext;->setSessionTicketKeys(J[Lio/netty/internal/tcnative/SessionTicketKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "keys.length % 48 != 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setTicketKeys([Lio/netty/handler/ssl/OpenSslSessionTicketKey;)V
    .locals 5

    const-string v0, "keys"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    new-array v1, v0, [Lio/netty/internal/tcnative/SessionTicketKey;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v3, v3, Lio/netty/handler/ssl/OpenSslSessionTicketKey;->key:Lio/netty/internal/tcnative/SessionTicketKey;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object p1, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    sget v4, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TICKET:I

    invoke-static {v2, v3, v4}, Lio/netty/internal/tcnative/SSLContext;->clearOptions(JI)V

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v2, v3, v1}, Lio/netty/internal/tcnative/SSLContext;->setSessionTicketKeys(J[Lio/netty/internal/tcnative/SessionTicketKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public stats()Lio/netty/handler/ssl/OpenSslSessionStats;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->stats:Lio/netty/handler/ssl/OpenSslSessionStats;

    return-object v0
.end method

.method public final useKeyManager()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
