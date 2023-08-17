.class public final Lio/grpc/inprocess/AnonymousInProcessSocketAddress;
.super Ljava/net/SocketAddress;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/8626"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x76e6340abe25d3a7L


# instance fields
.field private server:Lio/grpc/inprocess/InProcessServer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clearServer(Lio/grpc/inprocess/InProcessServer;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/inprocess/AnonymousInProcessSocketAddress;->server:Lio/grpc/inprocess/InProcessServer;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/grpc/inprocess/AnonymousInProcessSocketAddress;->server:Lio/grpc/inprocess/InProcessServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getServer()Lio/grpc/inprocess/InProcessServer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/inprocess/AnonymousInProcessSocketAddress;->server:Lio/grpc/inprocess/InProcessServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setServer(Lio/grpc/inprocess/InProcessServer;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/inprocess/AnonymousInProcessSocketAddress;->server:Lio/grpc/inprocess/InProcessServer;

    if-nez v0, :cond_0

    iput-object p1, p0, Lio/grpc/inprocess/AnonymousInProcessSocketAddress;->server:Lio/grpc/inprocess/InProcessServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Server instance already registered"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
