.class public final Lio/grpc/netty/NettySslContextServerCredentials;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/ExperimentalApi;
    value = "There is no plan to make this API stable, given transport API instability"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lio/netty/handler/ssl/SslContext;)Lio/grpc/ServerCredentials;
    .locals 2

    invoke-virtual {p0}, Lio/netty/handler/ssl/SslContext;->isServer()Z

    move-result v0

    const-string v1, "Client SSL context can not be used for server"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lio/netty/handler/ssl/SslContext;->applicationProtocolNegotiator()Lio/netty/handler/ssl/ApplicationProtocolNegotiator;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/GrpcSslContexts;->ensureAlpnAndH2Enabled(Lio/netty/handler/ssl/ApplicationProtocolNegotiator;)V

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators;->serverTlsFactory(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/NettyServerCredentials;->create(Lio/grpc/netty/ProtocolNegotiator$ServerFactory;)Lio/grpc/ServerCredentials;

    move-result-object p0

    return-object p0
.end method
