.class public final Lio/grpc/netty/NettyServerProvider;
.super Lio/grpc/ServerProvider;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/ServerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic builderForPort(I)Lio/grpc/ServerBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyServerProvider;->builderForPort(I)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public builderForPort(I)Lio/grpc/netty/NettyServerBuilder;
    .locals 0

    invoke-static {p1}, Lio/grpc/netty/NettyServerBuilder;->forPort(I)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newServerBuilderForPort(ILio/grpc/ServerCredentials;)Lio/grpc/ServerProvider$NewServerBuilderResult;
    .locals 2

    invoke-static {p2}, Lio/grpc/netty/ProtocolNegotiators;->from(Lio/grpc/ServerCredentials;)Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;

    move-result-object p2

    iget-object v0, p2, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/grpc/ServerProvider$NewServerBuilderResult;->error(Ljava/lang/String;)Lio/grpc/ServerProvider$NewServerBuilderResult;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lio/grpc/netty/NettyServerBuilder;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    iget-object p1, p2, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->negotiator:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    invoke-direct {v0, v1, p1}, Lio/grpc/netty/NettyServerBuilder;-><init>(Ljava/net/SocketAddress;Lio/grpc/netty/ProtocolNegotiator$ServerFactory;)V

    invoke-static {v0}, Lio/grpc/ServerProvider$NewServerBuilderResult;->serverBuilder(Lio/grpc/ServerBuilder;)Lio/grpc/ServerProvider$NewServerBuilderResult;

    move-result-object p1

    return-object p1
.end method

.method public priority()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
