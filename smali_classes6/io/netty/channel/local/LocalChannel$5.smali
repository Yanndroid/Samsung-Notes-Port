.class Lio/netty/channel/local/LocalChannel$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/local/LocalChannel;->runFinishPeerReadTask(Lio/netty/channel/local/LocalChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/local/LocalChannel;

.field public final synthetic val$peer:Lio/netty/channel/local/LocalChannel;


# direct methods
.method public constructor <init>(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/local/LocalChannel;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/local/LocalChannel$5;->this$0:Lio/netty/channel/local/LocalChannel;

    iput-object p2, p0, Lio/netty/channel/local/LocalChannel$5;->val$peer:Lio/netty/channel/local/LocalChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/netty/channel/local/LocalChannel$5;->this$0:Lio/netty/channel/local/LocalChannel;

    iget-object v1, p0, Lio/netty/channel/local/LocalChannel$5;->val$peer:Lio/netty/channel/local/LocalChannel;

    invoke-static {v0, v1}, Lio/netty/channel/local/LocalChannel;->access$400(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/local/LocalChannel;)V

    return-void
.end method
