.class Lio/netty/handler/flush/FlushConsolidationHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/flush/FlushConsolidationHandler;-><init>(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/flush/FlushConsolidationHandler;


# direct methods
.method public constructor <init>(Lio/netty/handler/flush/FlushConsolidationHandler;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler$1;->this$0:Lio/netty/handler/flush/FlushConsolidationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler$1;->this$0:Lio/netty/handler/flush/FlushConsolidationHandler;

    invoke-static {v0}, Lio/netty/handler/flush/FlushConsolidationHandler;->access$000(Lio/netty/handler/flush/FlushConsolidationHandler;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler$1;->this$0:Lio/netty/handler/flush/FlushConsolidationHandler;

    invoke-static {v0}, Lio/netty/handler/flush/FlushConsolidationHandler;->access$100(Lio/netty/handler/flush/FlushConsolidationHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler$1;->this$0:Lio/netty/handler/flush/FlushConsolidationHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/handler/flush/FlushConsolidationHandler;->access$002(Lio/netty/handler/flush/FlushConsolidationHandler;I)I

    iget-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler$1;->this$0:Lio/netty/handler/flush/FlushConsolidationHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/handler/flush/FlushConsolidationHandler;->access$202(Lio/netty/handler/flush/FlushConsolidationHandler;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler$1;->this$0:Lio/netty/handler/flush/FlushConsolidationHandler;

    invoke-static {v0}, Lio/netty/handler/flush/FlushConsolidationHandler;->access$300(Lio/netty/handler/flush/FlushConsolidationHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    return-void
.end method
