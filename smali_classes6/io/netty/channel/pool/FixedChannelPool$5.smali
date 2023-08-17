.class Lio/netty/channel/pool/FixedChannelPool$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/pool/FixedChannelPool;->closeAsync()Lio/netty/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/pool/FixedChannelPool;

.field public final synthetic val$closeComplete:Lio/netty/util/concurrent/Promise;


# direct methods
.method public constructor <init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$5;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    iput-object p2, p0, Lio/netty/channel/pool/FixedChannelPool$5;->val$closeComplete:Lio/netty/util/concurrent/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$5;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v0}, Lio/netty/channel/pool/FixedChannelPool;->access$1200(Lio/netty/channel/pool/FixedChannelPool;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Lio/netty/channel/pool/FixedChannelPool$5$1;

    invoke-direct {v1, p0}, Lio/netty/channel/pool/FixedChannelPool$5$1;-><init>(Lio/netty/channel/pool/FixedChannelPool$5;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-void
.end method
