.class Lio/netty/handler/codec/compression/Bzip2Encoder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/compression/Bzip2Encoder;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/compression/Bzip2Encoder;

.field public final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/compression/Bzip2Encoder;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2Encoder$1;->this$0:Lio/netty/handler/codec/compression/Bzip2Encoder;

    iput-object p2, p0, Lio/netty/handler/codec/compression/Bzip2Encoder$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder$1;->this$0:Lio/netty/handler/codec/compression/Bzip2Encoder;

    invoke-static {v0}, Lio/netty/handler/codec/compression/Bzip2Encoder;->access$000(Lio/netty/handler/codec/compression/Bzip2Encoder;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/compression/Bzip2Encoder$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, v1, v2}, Lio/netty/handler/codec/compression/Bzip2Encoder;->access$100(Lio/netty/handler/codec/compression/Bzip2Encoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2Encoder$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, v1}, Lio/netty/util/concurrent/PromiseNotifier;->cascade(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    return-void
.end method
