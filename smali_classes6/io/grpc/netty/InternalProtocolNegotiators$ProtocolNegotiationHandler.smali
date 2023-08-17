.class public Lio/grpc/netty/InternalProtocolNegotiators$ProtocolNegotiationHandler;
.super Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/InternalProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtocolNegotiationHandler"
.end annotation


# direct methods
.method public constructor <init>(Lio/netty/channel/ChannelHandler;Lio/grpc/ChannelLogger;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;-><init>(Lio/netty/channel/ChannelHandler;Lio/grpc/ChannelLogger;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelHandler;Ljava/lang/String;Lio/grpc/ChannelLogger;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;-><init>(Lio/netty/channel/ChannelHandler;Ljava/lang/String;Lio/grpc/ChannelLogger;)V

    return-void
.end method
