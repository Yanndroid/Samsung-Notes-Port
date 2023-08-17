.class public Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionManager;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;,
        Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."


# instance fields
.field public final alwaysShutDown:Z

.field public final connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field public volatile connectionExpiresTime:J

.field public volatile isShutDown:Z

.field public volatile lastReleaseTime:J

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field public volatile managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

.field public final schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

.field public volatile uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;->createDefault()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {p1, p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    const/4 p1, 0x0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->isShutDown:Z

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-void
.end method


# virtual methods
.method public final assertStillUp()V
    .locals 2

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->isShutDown:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Manager is shut down"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    return-void
.end method

.method public closeExpiredConnections()V
    .locals 4

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    :cond_0
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->assertStillUp()V

    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p3, "Problem closing idle connection."

    invoke-virtual {p2, p3, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method public finalize()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .locals 4

    const-string p2, "Route"

    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->assertStillUp()V

    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get connection for route "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    const-string v2, "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-static {p2, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->closeExpiredConnections()V

    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object p2, p2, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpConnection;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object p2, p2, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->toRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move p2, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p2, v0

    :goto_2
    move v3, v1

    move v1, p2

    move p2, v3

    goto :goto_3

    :cond_4
    move p2, v0

    :goto_3
    if-eqz v1, :cond_5

    :try_start_1
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p2

    :try_start_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Problem shutting down connection."

    invoke-virtual {v1, v2, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    move v0, p2

    :goto_4
    if-eqz v0, :cond_6

    new-instance p2, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {p2, p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;)V

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    :cond_6
    new-instance p2, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {p2, p0, v0, p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    instance-of v0, p1, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    const-string v1, "Connection class mismatch, connection not obtained from this manager"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->assertStillUp()V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    check-cast p1, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    if-nez v0, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->getManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v0

    if-ne v0, p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Connection not obtained from this manager"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->isMarkedReusable()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_3
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Released connection open but not reusable."

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->detach()V

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    cmp-long v2, p2, v2

    if-lez v2, :cond_6

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_1

    :cond_6
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    :goto_1
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_1
    move-exception v5

    goto :goto_4

    :catch_0
    move-exception v5

    :try_start_5
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Exception shutting down released connection."

    invoke-virtual {v6, v7, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_7
    :try_start_6
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->detach()V

    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    cmp-long v2, p2, v2

    if-lez v2, :cond_8

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_2

    :cond_8
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    :goto_2
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_3
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    return-void

    :catchall_2
    move-exception p2

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p2

    :goto_4
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->detach()V

    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    cmp-long v2, p2, v2

    if-lez v2, :cond_9

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_5

    :cond_9
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    :goto_5
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_3
    move-exception p2

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw p2

    :catchall_4
    move-exception p2

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw p2
.end method

.method public final requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method public revokeConnection()V
    .locals 3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->detach()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Problem while shutting down connection."

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->isShutDown:Z

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Problem while shutting down manager."

    invoke-virtual {v2, v3, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
