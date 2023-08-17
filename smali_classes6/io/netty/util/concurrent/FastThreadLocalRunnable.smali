.class final Lio/netty/util/concurrent/FastThreadLocalRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lio/netty/util/concurrent/FastThreadLocalRunnable;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    instance-of v0, p0, Lio/netty/util/concurrent/FastThreadLocalRunnable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/concurrent/FastThreadLocalRunnable;

    invoke-direct {v0, p0}, Lio/netty/util/concurrent/FastThreadLocalRunnable;-><init>(Ljava/lang/Runnable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/netty/util/concurrent/FastThreadLocalRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    throw v0
.end method
