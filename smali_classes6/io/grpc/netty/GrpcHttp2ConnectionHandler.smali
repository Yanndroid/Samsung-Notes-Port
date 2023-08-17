.class public abstract Lio/grpc/netty/GrpcHttp2ConnectionHandler;
.super Lio/netty/handler/codec/http2/Http2ConnectionHandler;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/Internal;
.end annotation


# static fields
.field public static final ADAPTIVE_CUMULATOR:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

.field public static final ADAPTIVE_CUMULATOR_COMPOSE_MIN_SIZE_DEFAULT:I = 0x400


# instance fields
.field public final channelUnused:Lio/netty/channel/ChannelPromise;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final negotiationLogger:Lio/grpc/ChannelLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/netty/NettyAdaptiveCumulator;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lio/grpc/netty/NettyAdaptiveCumulator;-><init>(I)V

    sput-object v0, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->ADAPTIVE_CUMULATOR:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelPromise;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;Lio/grpc/ChannelLogger;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)V

    iput-object p1, p0, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->channelUnused:Lio/netty/channel/ChannelPromise;

    iput-object p5, p0, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->negotiationLogger:Lio/grpc/ChannelLogger;

    sget-object p1, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->ADAPTIVE_CUMULATOR:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->setCumulator(Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;)V

    return-void
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getEagAttributes()Lio/grpc/Attributes;
    .locals 1

    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    return-object v0
.end method

.method public getNegotiationLogger()Lio/grpc/ChannelLogger;
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->negotiationLogger:Lio/grpc/ChannelLogger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "NegotiationLogger must not be null"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->negotiationLogger:Lio/grpc/ChannelLogger;

    return-object v0
.end method

.method public handleProtocolNegotiationCompleted(Lio/grpc/Attributes;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->handleProtocolNegotiationCompleted(Lio/grpc/Attributes;Lio/grpc/InternalChannelz$Security;)V

    return-void
.end method

.method public handleProtocolNegotiationCompleted(Lio/grpc/Attributes;Lio/grpc/InternalChannelz$Security;)V
    .locals 0

    return-void
.end method

.method public notifyUnused()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->channelUnused:Lio/netty/channel/ChannelPromise;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->setSuccess(Ljava/lang/Void;)Lio/netty/channel/ChannelPromise;

    return-void
.end method
