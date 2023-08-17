.class public final Lorg/conscrypt/ClientSessionContext;
.super Lorg/conscrypt/AbstractSessionContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ClientSessionContext$HostAndPort;
    }
.end annotation


# instance fields
.field private persistentCache:Lorg/conscrypt/SSLClientSessionCache;

.field private final sessionsByHostAndPort:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/conscrypt/ClientSessionContext$HostAndPort;",
            "Ljava/util/List<",
            "Lorg/conscrypt/NativeSslSession;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/conscrypt/AbstractSessionContext;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    return-void
.end method

.method private getSession(Ljava/lang/String;I)Lorg/conscrypt/NativeSslSession;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v1, p1, p2}, Lorg/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/conscrypt/NativeSslSession;

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/conscrypt/NativeSslSession;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    iget-object v2, p0, Lorg/conscrypt/ClientSessionContext;->persistentCache:Lorg/conscrypt/SSLClientSessionCache;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1, p2}, Lorg/conscrypt/SSLClientSessionCache;->getSessionData(Ljava/lang/String;I)[B

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {p0, v2, p1, p2}, Lorg/conscrypt/NativeSslSession;->newInstance(Lorg/conscrypt/AbstractSessionContext;[BLjava/lang/String;I)Lorg/conscrypt/NativeSslSession;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->isValid()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, v1, p1}, Lorg/conscrypt/ClientSessionContext;->putSession(Lorg/conscrypt/ClientSessionContext$HostAndPort;Lorg/conscrypt/NativeSslSession;)V

    return-object p1

    :cond_3
    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private putSession(Lorg/conscrypt/ClientSessionContext$HostAndPort;Lorg/conscrypt/NativeSslSession;)V
    .locals 5

    iget-object v0, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/conscrypt/NativeSslSession;

    invoke-virtual {v3}, Lorg/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v3

    invoke-virtual {p2}, Lorg/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v4

    if-eq v3, v4, :cond_2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/conscrypt/NativeSslSession;

    invoke-virtual {p0, v3}, Lorg/conscrypt/AbstractSessionContext;->removeSession(Lorg/conscrypt/NativeSslSession;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeSession(Lorg/conscrypt/ClientSessionContext$HostAndPort;Lorg/conscrypt/NativeSslSession;)V
    .locals 2

    iget-object v0, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getCachedSession(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/NativeSslSession;
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/ClientSessionContext;->getSession(Ljava/lang/String;I)Lorg/conscrypt/NativeSslSession;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getProtocol()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p3, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    move p2, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move p2, v3

    :goto_1
    if-nez p2, :cond_4

    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getCipherSuite()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lorg/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p3

    array-length v1, p3

    move v2, v3

    :goto_2
    if-ge v2, v1, :cond_6

    aget-object v4, p3, v2

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_5

    move v3, v5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-nez v3, :cond_7

    monitor-exit p0

    return-object v0

    :cond_7
    :try_start_3
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractSessionContext;->removeSession(Lorg/conscrypt/NativeSslSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getSessionFromPersistentCache([B)Lorg/conscrypt/NativeSslSession;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onBeforeAddSession(Lorg/conscrypt/NativeSslSession;)V
    .locals 3

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getPeerPort()I

    move-result v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v2, Lorg/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v2, v0, v1}, Lorg/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v2, p1}, Lorg/conscrypt/ClientSessionContext;->putSession(Lorg/conscrypt/ClientSessionContext$HostAndPort;Lorg/conscrypt/NativeSslSession;)V

    iget-object v0, p0, Lorg/conscrypt/ClientSessionContext;->persistentCache:Lorg/conscrypt/SSLClientSessionCache;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->toBytes()[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/conscrypt/ClientSessionContext;->persistentCache:Lorg/conscrypt/SSLClientSessionCache;

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->toSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/conscrypt/SSLClientSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    :cond_1
    return-void
.end method

.method public onBeforeRemoveSession(Lorg/conscrypt/NativeSslSession;)V
    .locals 3

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getPeerPort()I

    move-result v1

    new-instance v2, Lorg/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v2, v0, v1}, Lorg/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v2, p1}, Lorg/conscrypt/ClientSessionContext;->removeSession(Lorg/conscrypt/ClientSessionContext$HostAndPort;Lorg/conscrypt/NativeSslSession;)V

    return-void
.end method

.method public setPersistentCache(Lorg/conscrypt/SSLClientSessionCache;)V
    .locals 0

    iput-object p1, p0, Lorg/conscrypt/ClientSessionContext;->persistentCache:Lorg/conscrypt/SSLClientSessionCache;

    return-void
.end method

.method public size()I
    .locals 4

    iget-object v0, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
