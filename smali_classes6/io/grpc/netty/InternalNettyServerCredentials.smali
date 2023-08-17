.class public final Lio/grpc/netty/InternalNettyServerCredentials;
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

.method public static create(Lio/grpc/netty/InternalProtocolNegotiator$ProtocolNegotiator;)Lio/grpc/ServerCredentials;
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators;->fixedServerFactory(Lio/grpc/netty/ProtocolNegotiator;)Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/NettyServerCredentials;->create(Lio/grpc/netty/ProtocolNegotiator$ServerFactory;)Lio/grpc/ServerCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/grpc/netty/InternalProtocolNegotiator$ServerFactory;)Lio/grpc/ServerCredentials;
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/NettyServerCredentials;->create(Lio/grpc/netty/ProtocolNegotiator$ServerFactory;)Lio/grpc/ServerCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static toNegotiator(Lio/grpc/ServerCredentials;)Lio/grpc/netty/InternalProtocolNegotiator$ServerFactory;
    .locals 1

    invoke-static {p0}, Lio/grpc/netty/ProtocolNegotiators;->from(Lio/grpc/ServerCredentials;)Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;

    move-result-object p0

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->error:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lio/grpc/netty/InternalNettyServerCredentials$1ServerFactory;

    invoke-direct {v0, p0}, Lio/grpc/netty/InternalNettyServerCredentials$1ServerFactory;-><init>(Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->error:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
