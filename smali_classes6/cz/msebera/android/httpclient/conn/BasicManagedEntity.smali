.class public Lcz/msebera/android/httpclient/conn/BasicManagedEntity;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;
.implements Lcz/msebera/android/httpclient/conn/EofSensorWatcher;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final attemptReuse:Z

.field public managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/conn/ManagedClientConnection;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    const-string p1, "Connection"

    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iput-boolean p3, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    return-void
.end method

.method private ensureConsumed()V
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->unmarkReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    throw v0
.end method


# virtual methods
.method public abortConnection()V
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;->abortConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public consumeContent()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->ensureConsumed()V

    return-void
.end method

.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->unmarkReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    throw p1
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;-><init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/conn/EofSensorWatcher;)V

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public releaseConnection()V
    .locals 0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->ensureConsumed()V

    return-void
.end method

.method public releaseManagedConnection()V
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;->releaseConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 0

    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;->abortConnection()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->isOpen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_2
    throw p1

    :cond_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->unmarkReusable()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0

    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->ensureConsumed()V

    return-void
.end method
