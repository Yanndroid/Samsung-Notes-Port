.class Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallLoadFailed"
.end annotation


# instance fields
.field private final cb:Lcom/bumptech/glide/request/ResourceCallback;

.field public final synthetic this$0:Lcom/bumptech/glide/load/engine/EngineJob;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-interface {v0}, Lcom/bumptech/glide/request/ResourceCallback;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->contains(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/EngineJob;->callCallbackOnLoadFailed(Lcom/bumptech/glide/request/ResourceCallback;)V

    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallLoadFailed;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineJob;->decrementPendingCallbacks()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
