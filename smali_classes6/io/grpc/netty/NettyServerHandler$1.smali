.class Lio/grpc/netty/NettyServerHandler$1;
.super Lio/netty/handler/codec/http2/Http2ConnectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyServerHandler;-><init>(Lio/netty/channel/ChannelPromise;Lio/netty/handler/codec/http2/Http2Connection;Lio/grpc/internal/ServerTransportListener;Ljava/util/List;Lio/grpc/internal/TransportTracer;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;IJJJJJLio/grpc/internal/KeepAliveEnforcer;ZLio/grpc/Attributes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyServerHandler;

.field public final synthetic val$connection:Lio/netty/handler/codec/http2/Http2Connection;

.field public final synthetic val$keepAliveEnforcer:Lio/grpc/internal/KeepAliveEnforcer;

.field public final synthetic val$maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServerHandler;Lio/netty/handler/codec/http2/Http2Connection;Lio/grpc/internal/KeepAliveEnforcer;Lio/grpc/internal/MaxConnectionIdleManager;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerHandler$1;->this$0:Lio/grpc/netty/NettyServerHandler;

    iput-object p2, p0, Lio/grpc/netty/NettyServerHandler$1;->val$connection:Lio/netty/handler/codec/http2/Http2Connection;

    iput-object p3, p0, Lio/grpc/netty/NettyServerHandler$1;->val$keepAliveEnforcer:Lio/grpc/internal/KeepAliveEnforcer;

    iput-object p4, p0, Lio/grpc/netty/NettyServerHandler$1;->val$maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamActive(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 1

    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$1;->val$connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->numActiveStreams()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$1;->val$keepAliveEnforcer:Lio/grpc/internal/KeepAliveEnforcer;

    invoke-virtual {p1}, Lio/grpc/internal/KeepAliveEnforcer;->onTransportActive()V

    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$1;->val$maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/grpc/internal/MaxConnectionIdleManager;->onTransportActive()V

    :cond_0
    return-void
.end method

.method public onStreamClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$1;->val$connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->numActiveStreams()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$1;->val$keepAliveEnforcer:Lio/grpc/internal/KeepAliveEnforcer;

    invoke-virtual {p1}, Lio/grpc/internal/KeepAliveEnforcer;->onTransportIdle()V

    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$1;->val$maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/grpc/internal/MaxConnectionIdleManager;->onTransportIdle()V

    :cond_0
    return-void
.end method
