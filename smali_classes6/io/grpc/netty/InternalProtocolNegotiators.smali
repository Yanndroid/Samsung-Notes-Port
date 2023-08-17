.class public final Lio/grpc/netty/InternalProtocolNegotiators;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/InternalProtocolNegotiators$ProtocolNegotiationHandler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clientTlsHandler(Lio/netty/channel/ChannelHandler;Lio/netty/handler/ssl/SslContext;Ljava/lang/String;Lio/grpc/ChannelLogger;)Lio/netty/channel/ChannelHandler;
    .locals 7

    new-instance v6, Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/ProtocolNegotiators$ClientTlsHandler;-><init>(Lio/netty/channel/ChannelHandler;Lio/netty/handler/ssl/SslContext;Ljava/lang/String;Ljava/util/concurrent/Executor;Lio/grpc/ChannelLogger;)V

    return-object v6
.end method

.method public static grpcNegotiationHandler(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)Lio/netty/channel/ChannelHandler;
    .locals 1

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$GrpcNegotiationHandler;

    invoke-direct {v0, p0}, Lio/grpc/netty/ProtocolNegotiators$GrpcNegotiationHandler;-><init>(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)V

    return-object v0
.end method

.method public static plaintext()Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;
    .locals 2

    invoke-static {}, Lio/grpc/netty/ProtocolNegotiators;->plaintext()Lio/grpc/netty/ProtocolNegotiator;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/InternalProtocolNegotiators$1PlaintextNegotiator;

    invoke-direct {v1, v0}, Lio/grpc/netty/InternalProtocolNegotiators$1PlaintextNegotiator;-><init>(Lio/grpc/netty/ProtocolNegotiator;)V

    return-object v1
.end method

.method public static serverPlaintext()Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;
    .locals 2

    invoke-static {}, Lio/grpc/netty/ProtocolNegotiators;->serverPlaintext()Lio/grpc/netty/ProtocolNegotiator;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/InternalProtocolNegotiators$1ServerPlaintextNegotiator;

    invoke-direct {v1, v0}, Lio/grpc/netty/InternalProtocolNegotiators$1ServerPlaintextNegotiator;-><init>(Lio/grpc/netty/ProtocolNegotiator;)V

    return-object v1
.end method

.method public static serverTls(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;
    .locals 1

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators;->serverTls(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/ProtocolNegotiator;

    move-result-object p0

    new-instance v0, Lio/grpc/netty/InternalProtocolNegotiators$1ServerTlsNegotiator;

    invoke-direct {v0, p0}, Lio/grpc/netty/InternalProtocolNegotiators$1ServerTlsNegotiator;-><init>(Lio/grpc/netty/ProtocolNegotiator;)V

    return-object v0
.end method

.method public static tls(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;
    .locals 1

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators;->tls(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/ProtocolNegotiator;

    move-result-object p0

    new-instance v0, Lio/grpc/netty/InternalProtocolNegotiators$1TlsNegotiator;

    invoke-direct {v0, p0}, Lio/grpc/netty/InternalProtocolNegotiators$1TlsNegotiator;-><init>(Lio/grpc/netty/ProtocolNegotiator;)V

    return-object v0
.end method

.method public static waitUntilActiveHandler(Lio/netty/channel/ChannelHandler;Lio/grpc/ChannelLogger;)Lio/netty/channel/ChannelHandler;
    .locals 1

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$WaitUntilActiveHandler;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/ProtocolNegotiators$WaitUntilActiveHandler;-><init>(Lio/netty/channel/ChannelHandler;Lio/grpc/ChannelLogger;)V

    return-object v0
.end method
