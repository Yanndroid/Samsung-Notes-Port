.class final Lio/grpc/okhttp/OkHttpServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/InternalServer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpServer$ListenSocket;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private actualListenAddress:Ljava/net/SocketAddress;

.field private final channelz:Lio/grpc/InternalChannelz;

.field private listenInstrumented:Lio/grpc/InternalInstrumented;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lio/grpc/internal/ServerListener;

.field private final originalListenAddress:Ljava/net/SocketAddress;

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private serverSocket:Ljava/net/ServerSocket;

.field private shutdown:Z

.field private final socketFactory:Ljavax/net/ServerSocketFactory;

.field private final transportConfig:Lio/grpc/okhttp/OkHttpServerTransport$Config;

.field private transportExecutor:Ljava/util/concurrent/Executor;

.field private final transportExecutorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/okhttp/OkHttpServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpServer;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/grpc/okhttp/OkHttpServerBuilder;Ljava/util/List;Lio/grpc/InternalChannelz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/okhttp/OkHttpServerBuilder;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;",
            "Lio/grpc/InternalChannelz;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->listenAddress:Ljava/net/SocketAddress;

    const-string v1, "listenAddress"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->originalListenAddress:Ljava/net/SocketAddress;

    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->socketFactory:Ljavax/net/ServerSocketFactory;

    const-string v1, "socketFactory"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ServerSocketFactory;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->socketFactory:Ljavax/net/ServerSocketFactory;

    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    const-string v1, "transportExecutorPool"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    iget-object v0, p1, Lio/grpc/okhttp/OkHttpServerBuilder;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    const-string v1, "scheduledExecutorServicePool"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    new-instance v0, Lio/grpc/okhttp/OkHttpServerTransport$Config;

    invoke-direct {v0, p1, p2}, Lio/grpc/okhttp/OkHttpServerTransport$Config;-><init>(Lio/grpc/okhttp/OkHttpServerBuilder;Ljava/util/List;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->transportConfig:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    const-string p1, "channelz"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/InternalChannelz;

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServer;->channelz:Lio/grpc/InternalChannelz;

    return-void
.end method

.method public static synthetic a(Lio/grpc/okhttp/OkHttpServer;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpServer;->acceptConnections()V

    return-void
.end method

.method private acceptConnections()V
    .locals 4

    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Lio/grpc/okhttp/OkHttpServerTransport;

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServer;->transportConfig:Lio/grpc/okhttp/OkHttpServerTransport$Config;

    invoke-direct {v1, v2, v0}, Lio/grpc/okhttp/OkHttpServerTransport;-><init>(Lio/grpc/okhttp/OkHttpServerTransport$Config;Ljava/net/Socket;)V

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->listener:Lio/grpc/internal/ServerListener;

    invoke-interface {v0, v1}, Lio/grpc/internal/ServerListener;->transportCreated(Lio/grpc/internal/ServerTransport;)Lio/grpc/internal/ServerTransportListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/grpc/okhttp/OkHttpServerTransport;->start(Lio/grpc/internal/ServerTransportListener;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpServer;->shutdown:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    sget-object v1, Lio/grpc/okhttp/OkHttpServer;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Accept loop failed"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->listener:Lio/grpc/internal/ServerListener;

    invoke-interface {v0}, Lio/grpc/internal/ServerListener;->serverShutdown()V

    return-void
.end method


# virtual methods
.method public getListenSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->actualListenAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getListenSocketAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpServer;->getListenSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getListenSocketStats()Lio/grpc/InternalInstrumented;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->listenInstrumented:Lio/grpc/InternalInstrumented;

    return-object v0
.end method

.method public getListenSocketStatsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpServer;->getListenSocketStats()Lio/grpc/InternalInstrumented;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 4

    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpServer;->shutdown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpServer;->shutdown:Z

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->serverSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->channelz:Lio/grpc/InternalChannelz;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServer;->listenInstrumented:Lio/grpc/InternalInstrumented;

    invoke-virtual {v0, v1}, Lio/grpc/InternalChannelz;->removeListenSocket(Lio/grpc/InternalInstrumented;)V

    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lio/grpc/okhttp/OkHttpServer;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServer;->serverSocket:Ljava/net/ServerSocket;

    const-string v3, "Failed closing server socket"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServer;->transportExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->transportExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public start(Lio/grpc/internal/ServerListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ServerListener;

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServer;->listener:Lio/grpc/internal/ServerListener;

    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServer;->socketFactory:Ljavax/net/ServerSocketFactory;

    invoke-virtual {p1}, Ljavax/net/ServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->originalListenAddress:Ljava/net/SocketAddress;

    invoke-virtual {p1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->actualListenAddress:Ljava/net/SocketAddress;

    new-instance v0, Lio/grpc/okhttp/OkHttpServer$ListenSocket;

    invoke-direct {v0, p1}, Lio/grpc/okhttp/OkHttpServer$ListenSocket;-><init>(Ljava/net/ServerSocket;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->listenInstrumented:Lio/grpc/InternalInstrumented;

    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServer;->transportExecutorPool:Lio/grpc/internal/ObjectPool;

    invoke-interface {p1}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServer;->transportExecutor:Ljava/util/concurrent/Executor;

    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServer;->scheduledExecutorServicePool:Lio/grpc/internal/ObjectPool;

    invoke-interface {p1}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServer;->channelz:Lio/grpc/InternalChannelz;

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServer;->listenInstrumented:Lio/grpc/InternalInstrumented;

    invoke-virtual {p1, v0}, Lio/grpc/InternalChannelz;->addListenSocket(Lio/grpc/InternalInstrumented;)V

    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServer;->transportExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lio/grpc/okhttp/a;

    invoke-direct {v0, p0}, Lio/grpc/okhttp/a;-><init>(Lio/grpc/okhttp/OkHttpServer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V

    throw v0
.end method
