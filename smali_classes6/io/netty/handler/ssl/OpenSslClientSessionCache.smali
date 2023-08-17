.class final Lio/netty/handler/ssl/OpenSslClientSessionCache;
.super Lio/netty/handler/ssl/OpenSslSessionCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;",
            "Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/handler/ssl/OpenSslClientSessionCache;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/OpenSslSessionCache;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache;->sessions:Ljava/util/Map;

    return-void
.end method

.method private static keyFor(Ljava/lang/String;I)Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lio/netty/handler/ssl/OpenSslSessionCache;->clear()V

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sessionCreated(Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;)Z
    .locals 2

    invoke-virtual {p1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->getPeerPort()I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/handler/ssl/OpenSslClientSessionCache;->keyFor(Ljava/lang/String;I)Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public sessionRemoved(Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;)V
    .locals 1

    invoke-virtual {p1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->getPeerPort()I

    move-result p1

    invoke-static {v0, p1}, Lio/netty/handler/ssl/OpenSslClientSessionCache;->keyFor(Ljava/lang/String;I)Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSession(JLjava/lang/String;I)V
    .locals 2

    invoke-static {p3, p4}, Lio/netty/handler/ssl/OpenSslClientSessionCache;->keyFor(Ljava/lang/String;I)Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object p4, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    if-nez p3, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    invoke-virtual {p3}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->isValid()Z

    move-result p4

    if-nez p4, :cond_2

    invoke-virtual {p3}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->sessionId()Lio/netty/handler/ssl/OpenSslSessionId;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslSessionCache;->removeSessionWithId(Lio/netty/handler/ssl/OpenSslSessionId;)V

    monitor-exit p0

    return-void

    :cond_2
    invoke-virtual {p3}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->session()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lio/netty/internal/tcnative/SSL;->setSession(JJ)Z

    move-result p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->shouldBeSingleUse()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->invalidate()V

    :cond_3
    invoke-virtual {p3}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->updateLastAccessedTime()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
