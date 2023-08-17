.class Lio/netty/channel/pool/AbstractChannelPoolMap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/pool/AbstractChannelPoolMap;->removeAsyncIfSupported(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/GenericFutureListener<",
        "Lio/netty/util/concurrent/Future<",
        "-",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/pool/AbstractChannelPoolMap;

.field public final synthetic val$removePromise:Lio/netty/util/concurrent/Promise;


# direct methods
.method public constructor <init>(Lio/netty/channel/pool/AbstractChannelPoolMap;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/pool/AbstractChannelPoolMap$1;->this$0:Lio/netty/channel/pool/AbstractChannelPoolMap;

    iput-object p2, p0, Lio/netty/channel/pool/AbstractChannelPoolMap$1;->val$removePromise:Lio/netty/util/concurrent/Promise;

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
            "-",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/netty/channel/pool/AbstractChannelPoolMap$1;->val$removePromise:Lio/netty/util/concurrent/Promise;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap$1;->val$removePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    :goto_0
    return-void
.end method
