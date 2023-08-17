.class Lio/netty/channel/pool/FixedChannelPool$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/pool/FixedChannelPool$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lio/netty/channel/pool/FixedChannelPool$5;


# direct methods
.method public constructor <init>(Lio/netty/channel/pool/FixedChannelPool$5;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$5$1;->this$1:Lio/netty/channel/pool/FixedChannelPool$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$5$1;->this$1:Lio/netty/channel/pool/FixedChannelPool$5;

    iget-object p1, p1, Lio/netty/channel/pool/FixedChannelPool$5;->val$closeComplete:Lio/netty/util/concurrent/Promise;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$5$1;->this$1:Lio/netty/channel/pool/FixedChannelPool$5;

    iget-object v0, v0, Lio/netty/channel/pool/FixedChannelPool$5;->val$closeComplete:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    :goto_0
    return-void
.end method
