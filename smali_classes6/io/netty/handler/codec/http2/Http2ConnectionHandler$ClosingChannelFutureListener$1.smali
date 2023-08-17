.class Lio/netty/handler/codec/http2/Http2ConnectionHandler$ClosingChannelFutureListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2ConnectionHandler$ClosingChannelFutureListener;-><init>(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler$ClosingChannelFutureListener;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionHandler$ClosingChannelFutureListener;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$ClosingChannelFutureListener$1;->this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler$ClosingChannelFutureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$ClosingChannelFutureListener$1;->this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler$ClosingChannelFutureListener;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$ClosingChannelFutureListener;->access$1300(Lio/netty/handler/codec/http2/Http2ConnectionHandler$ClosingChannelFutureListener;)V

    return-void
.end method
