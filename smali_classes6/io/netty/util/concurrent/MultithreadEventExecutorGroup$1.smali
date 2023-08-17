.class Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/MultithreadEventExecutorGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/util/concurrent/MultithreadEventExecutorGroup;


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;->this$0:Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;->this$0:Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

    invoke-static {p1}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->access$000(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;->this$0:Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

    invoke-static {v0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->access$100(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)[Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    array-length v0, v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;->this$0:Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

    invoke-static {p1}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->access$200(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    :cond_0
    return-void
.end method
