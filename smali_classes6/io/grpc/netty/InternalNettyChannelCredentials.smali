.class public final Lio/grpc/netty/InternalNettyChannelCredentials;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/Internal;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lio/grpc/netty/InternalProtocolNegotiator$ClientFactory;)Lio/grpc/ChannelCredentials;
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/NettyChannelCredentials;->create(Lio/grpc/netty/ProtocolNegotiator$ClientFactory;)Lio/grpc/ChannelCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static toNegotiator(Lio/grpc/ChannelCredentials;)Lio/grpc/netty/InternalProtocolNegotiator$ClientFactory;
    .locals 1

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators;->from(Lio/grpc/ChannelCredentials;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    move-result-object p0

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->error:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lio/grpc/netty/InternalNettyChannelCredentials$1ClientFactory;

    invoke-direct {v0, p0}, Lio/grpc/netty/InternalNettyChannelCredentials$1ClientFactory;-><init>(Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->error:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
