.class Lio/grpc/netty/ProtocolNegotiators$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/ProtocolNegotiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/ProtocolNegotiators;->serverTls(Lio/netty/handler/ssl/SslContext;Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/ProtocolNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$executor:Ljava/util/concurrent/Executor;

.field public final synthetic val$executorPool:Lio/grpc/internal/ObjectPool;

.field public final synthetic val$sslContext:Lio/netty/handler/ssl/SslContext;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/SslContext;Lio/grpc/internal/ObjectPool;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$1;->val$sslContext:Lio/netty/handler/ssl/SslContext;

    iput-object p2, p0, Lio/grpc/netty/ProtocolNegotiators$1;->val$executorPool:Lio/grpc/internal/ObjectPool;

    iput-object p3, p0, Lio/grpc/netty/ProtocolNegotiators$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$1;->val$executorPool:Lio/grpc/internal/ObjectPool;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/grpc/netty/ProtocolNegotiators$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public newHandler(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)Lio/netty/channel/ChannelHandler;
    .locals 4

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$GrpcNegotiationHandler;

    invoke-direct {v0, p1}, Lio/grpc/netty/ProtocolNegotiators$GrpcNegotiationHandler;-><init>(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)V

    new-instance v1, Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;

    iget-object v2, p0, Lio/grpc/netty/ProtocolNegotiators$1;->val$sslContext:Lio/netty/handler/ssl/SslContext;

    iget-object v3, p0, Lio/grpc/netty/ProtocolNegotiators$1;->val$executorPool:Lio/grpc/internal/ObjectPool;

    invoke-direct {v1, v0, v2, v3}, Lio/grpc/netty/ProtocolNegotiators$ServerTlsHandler;-><init>(Lio/netty/channel/ChannelHandler;Lio/netty/handler/ssl/SslContext;Lio/grpc/internal/ObjectPool;)V

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$WaitUntilActiveHandler;

    invoke-virtual {p1}, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->getNegotiationLogger()Lio/grpc/ChannelLogger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lio/grpc/netty/ProtocolNegotiators$WaitUntilActiveHandler;-><init>(Lio/netty/channel/ChannelHandler;Lio/grpc/ChannelLogger;)V

    return-object v0
.end method

.method public scheme()Lio/netty/util/AsciiString;
    .locals 1

    sget-object v0, Lio/grpc/netty/Utils;->HTTPS:Lio/netty/util/AsciiString;

    return-object v0
.end method
