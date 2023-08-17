.class Lio/grpc/netty/Http2ControlFrameLimitEncoder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/Http2ControlFrameLimitEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/Http2ControlFrameLimitEncoder;


# direct methods
.method public constructor <init>(Lio/grpc/netty/Http2ControlFrameLimitEncoder;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/Http2ControlFrameLimitEncoder$1;->this$0:Lio/grpc/netty/Http2ControlFrameLimitEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/Http2ControlFrameLimitEncoder$1;->this$0:Lio/grpc/netty/Http2ControlFrameLimitEncoder;

    invoke-static {p1}, Lio/grpc/netty/Http2ControlFrameLimitEncoder;->access$010(Lio/grpc/netty/Http2ControlFrameLimitEncoder;)I

    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/grpc/netty/Http2ControlFrameLimitEncoder$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
