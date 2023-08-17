.class Lio/netty/channel/ChannelInitializer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/ChannelInitializer;->removeState(Lio/netty/channel/ChannelHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/ChannelInitializer;

.field public final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;


# direct methods
.method public constructor <init>(Lio/netty/channel/ChannelInitializer;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/ChannelInitializer$1;->this$0:Lio/netty/channel/ChannelInitializer;

    iput-object p2, p0, Lio/netty/channel/ChannelInitializer$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/netty/channel/ChannelInitializer$1;->this$0:Lio/netty/channel/ChannelInitializer;

    invoke-static {v0}, Lio/netty/channel/ChannelInitializer;->access$000(Lio/netty/channel/ChannelInitializer;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/ChannelInitializer$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
