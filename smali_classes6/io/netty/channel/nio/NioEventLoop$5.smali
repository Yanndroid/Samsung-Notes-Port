.class Lio/netty/channel/nio/NioEventLoop$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/nio/NioEventLoop;->register(Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/nio/NioEventLoop;

.field public final synthetic val$ch:Ljava/nio/channels/SelectableChannel;

.field public final synthetic val$interestOps:I

.field public final synthetic val$task:Lio/netty/channel/nio/NioTask;


# direct methods
.method public constructor <init>(Lio/netty/channel/nio/NioEventLoop;Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/nio/NioEventLoop$5;->this$0:Lio/netty/channel/nio/NioEventLoop;

    iput-object p2, p0, Lio/netty/channel/nio/NioEventLoop$5;->val$ch:Ljava/nio/channels/SelectableChannel;

    iput p3, p0, Lio/netty/channel/nio/NioEventLoop$5;->val$interestOps:I

    iput-object p4, p0, Lio/netty/channel/nio/NioEventLoop$5;->val$task:Lio/netty/channel/nio/NioTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop$5;->this$0:Lio/netty/channel/nio/NioEventLoop;

    iget-object v1, p0, Lio/netty/channel/nio/NioEventLoop$5;->val$ch:Ljava/nio/channels/SelectableChannel;

    iget v2, p0, Lio/netty/channel/nio/NioEventLoop$5;->val$interestOps:I

    iget-object v3, p0, Lio/netty/channel/nio/NioEventLoop$5;->val$task:Lio/netty/channel/nio/NioTask;

    invoke-static {v0, v1, v2, v3}, Lio/netty/channel/nio/NioEventLoop;->access$000(Lio/netty/channel/nio/NioEventLoop;Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V

    return-void
.end method
