.class Lio/netty/channel/pool/FixedChannelPool$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/pool/FixedChannelPool;->acquire(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/pool/FixedChannelPool;

.field public final synthetic val$promise:Lio/netty/util/concurrent/Promise;


# direct methods
.method public constructor <init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$3;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    iput-object p2, p0, Lio/netty/channel/pool/FixedChannelPool$3;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$3;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    iget-object v1, p0, Lio/netty/channel/pool/FixedChannelPool$3;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-static {v0, v1}, Lio/netty/channel/pool/FixedChannelPool;->access$300(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method
