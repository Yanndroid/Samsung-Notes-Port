.class final Lio/grpc/netty/ProtocolNegotiators$ClientTlsProtocolNegotiator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/ProtocolNegotiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/ProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientTlsProtocolNegotiator"
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private final executorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final sslContext:Lio/netty/handler/ssl/SslContext;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/SslContext;Lio/grpc/internal/ObjectPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/ssl/SslContext;",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sslContext"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/ssl/SslContext;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsProtocolNegotiator;->sslContext:Lio/netty/handler/ssl/SslContext;

    iput-object p2, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsProtocolNegotiator;->executorPool:Lio/grpc/internal/ObjectPool;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsProtocolNegotiator;->executor:Ljava/util/concurrent/Executor;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsProtocolNegotiator;->executorPool:Lio/grpc/internal/ObjectPool;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsProtocolNegotiator;->executor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public newHandler(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)Lio/netty/channel/ChannelHandler;
    .locals 8

    new-instance v1, Lio/grpc/netty/ProtocolNegotiators$GrpcNegotiationHandler;

    invoke-direct {v1, p1}, Lio/grpc/netty/ProtocolNegotiators$GrpcNegotiationHandler;-><init>(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)V

    invoke-virtual {p1}, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->getNegotiationLogger()Lio/grpc/ChannelLogger;

    move-result-object v6

    new-instance v7, Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;

    iget-object v2, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsProtocolNegotiator;->sslContext:Lio/netty/handler/ssl/SslContext;

    invoke-virtual {p1}, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->getAuthority()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/netty/ProtocolNegotiators$ClientTlsProtocolNegotiator;->executor:Ljava/util/concurrent/Executor;

    move-object v0, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;-><init>(Lio/netty/channel/ChannelHandler;Lio/netty/handler/ssl/SslContext;Ljava/lang/String;Ljava/util/concurrent/Executor;Lio/grpc/ChannelLogger;)V

    new-instance p1, Lio/grpc/netty/ProtocolNegotiators$WaitUntilActiveHandler;

    invoke-direct {p1, v7, v6}, Lio/grpc/netty/ProtocolNegotiators$WaitUntilActiveHandler;-><init>(Lio/netty/channel/ChannelHandler;Lio/grpc/ChannelLogger;)V

    return-object p1
.end method

.method public scheme()Lio/netty/util/AsciiString;
    .locals 1

    sget-object v0, Lio/grpc/netty/Utils;->HTTPS:Lio/netty/util/AsciiString;

    return-object v0
.end method
