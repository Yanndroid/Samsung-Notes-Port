.class Lio/netty/util/concurrent/PromiseCombiner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/PromiseCombiner;
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
        "*>;>;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public final synthetic this$0:Lio/netty/util/concurrent/PromiseCombiner;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/PromiseCombiner;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/concurrent/PromiseCombiner$1;->this$0:Lio/netty/util/concurrent/PromiseCombiner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lio/netty/util/concurrent/PromiseCombiner$1;Lio/netty/util/concurrent/Future;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/concurrent/PromiseCombiner$1;->operationComplete0(Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method private operationComplete0(Lio/netty/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner$1;->this$0:Lio/netty/util/concurrent/PromiseCombiner;

    invoke-static {v0}, Lio/netty/util/concurrent/PromiseCombiner;->access$204(Lio/netty/util/concurrent/PromiseCombiner;)I

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner$1;->this$0:Lio/netty/util/concurrent/PromiseCombiner;

    invoke-static {v0}, Lio/netty/util/concurrent/PromiseCombiner;->access$300(Lio/netty/util/concurrent/PromiseCombiner;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner$1;->this$0:Lio/netty/util/concurrent/PromiseCombiner;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, p1}, Lio/netty/util/concurrent/PromiseCombiner;->access$302(Lio/netty/util/concurrent/PromiseCombiner;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    iget-object p1, p0, Lio/netty/util/concurrent/PromiseCombiner$1;->this$0:Lio/netty/util/concurrent/PromiseCombiner;

    invoke-static {p1}, Lio/netty/util/concurrent/PromiseCombiner;->access$200(Lio/netty/util/concurrent/PromiseCombiner;)I

    move-result p1

    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner$1;->this$0:Lio/netty/util/concurrent/PromiseCombiner;

    invoke-static {v0}, Lio/netty/util/concurrent/PromiseCombiner;->access$400(Lio/netty/util/concurrent/PromiseCombiner;)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lio/netty/util/concurrent/PromiseCombiner$1;->this$0:Lio/netty/util/concurrent/PromiseCombiner;

    invoke-static {p1}, Lio/netty/util/concurrent/PromiseCombiner;->access$500(Lio/netty/util/concurrent/PromiseCombiner;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/netty/util/concurrent/PromiseCombiner$1;->this$0:Lio/netty/util/concurrent/PromiseCombiner;

    invoke-static {p1}, Lio/netty/util/concurrent/PromiseCombiner;->access$600(Lio/netty/util/concurrent/PromiseCombiner;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner$1;->this$0:Lio/netty/util/concurrent/PromiseCombiner;

    invoke-static {v0}, Lio/netty/util/concurrent/PromiseCombiner;->access$000(Lio/netty/util/concurrent/PromiseCombiner;)Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lio/netty/util/concurrent/PromiseCombiner$1;->operationComplete0(Lio/netty/util/concurrent/Future;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner$1;->this$0:Lio/netty/util/concurrent/PromiseCombiner;

    invoke-static {v0}, Lio/netty/util/concurrent/PromiseCombiner;->access$000(Lio/netty/util/concurrent/PromiseCombiner;)Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/netty/util/concurrent/PromiseCombiner$1$1;

    invoke-direct {v1, p0, p1}, Lio/netty/util/concurrent/PromiseCombiner$1$1;-><init>(Lio/netty/util/concurrent/PromiseCombiner$1;Lio/netty/util/concurrent/Future;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
