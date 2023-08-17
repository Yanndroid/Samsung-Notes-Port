.class Lio/grpc/netty/SendPingCommand;
.super Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;
.source "SourceFile"


# instance fields
.field private final callback:Lio/grpc/internal/ClientTransport$PingCallback;

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;-><init>()V

    iput-object p1, p0, Lio/grpc/netty/SendPingCommand;->callback:Lio/grpc/internal/ClientTransport$PingCallback;

    iput-object p2, p0, Lio/grpc/netty/SendPingCommand;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public callback()Lio/grpc/internal/ClientTransport$PingCallback;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/SendPingCommand;->callback:Lio/grpc/internal/ClientTransport$PingCallback;

    return-object v0
.end method

.method public executor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/SendPingCommand;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
