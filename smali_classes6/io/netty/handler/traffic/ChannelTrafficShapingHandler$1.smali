.class Lio/netty/handler/traffic/ChannelTrafficShapingHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->submitWrite(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JJJLio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/traffic/ChannelTrafficShapingHandler;

.field public final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field public final synthetic val$futureNow:J


# direct methods
.method public constructor <init>(Lio/netty/handler/traffic/ChannelTrafficShapingHandler;Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$1;->this$0:Lio/netty/handler/traffic/ChannelTrafficShapingHandler;

    iput-object p2, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iput-wide p3, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$1;->val$futureNow:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$1;->this$0:Lio/netty/handler/traffic/ChannelTrafficShapingHandler;

    iget-object v1, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iget-wide v2, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$1;->val$futureNow:J

    invoke-static {v0, v1, v2, v3}, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->access$100(Lio/netty/handler/traffic/ChannelTrafficShapingHandler;Lio/netty/channel/ChannelHandlerContext;J)V

    return-void
.end method
