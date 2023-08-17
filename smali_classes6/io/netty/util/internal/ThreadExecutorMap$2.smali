.class final Lio/netty/util/internal/ThreadExecutorMap$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/ThreadExecutorMap;->apply(Ljava/lang/Runnable;Lio/netty/util/concurrent/EventExecutor;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$command:Ljava/lang/Runnable;

.field public final synthetic val$eventExecutor:Lio/netty/util/concurrent/EventExecutor;


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/internal/ThreadExecutorMap$2;->val$eventExecutor:Lio/netty/util/concurrent/EventExecutor;

    iput-object p2, p0, Lio/netty/util/internal/ThreadExecutorMap$2;->val$command:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/netty/util/internal/ThreadExecutorMap$2;->val$eventExecutor:Lio/netty/util/concurrent/EventExecutor;

    invoke-static {v0}, Lio/netty/util/internal/ThreadExecutorMap;->access$000(Lio/netty/util/concurrent/EventExecutor;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/netty/util/internal/ThreadExecutorMap$2;->val$command:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lio/netty/util/internal/ThreadExecutorMap;->access$000(Lio/netty/util/concurrent/EventExecutor;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lio/netty/util/internal/ThreadExecutorMap;->access$000(Lio/netty/util/concurrent/EventExecutor;)V

    throw v1
.end method
