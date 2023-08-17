.class Lio/grpc/internal/SharedResourceHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/SharedResourceHolder;->releaseInternal(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/SharedResourceHolder;

.field public final synthetic val$cached:Lio/grpc/internal/SharedResourceHolder$Instance;

.field public final synthetic val$instance:Ljava/lang/Object;

.field public final synthetic val$resource:Lio/grpc/internal/SharedResourceHolder$Resource;


# direct methods
.method public constructor <init>(Lio/grpc/internal/SharedResourceHolder;Lio/grpc/internal/SharedResourceHolder$Instance;Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    iput-object p2, p0, Lio/grpc/internal/SharedResourceHolder$2;->val$cached:Lio/grpc/internal/SharedResourceHolder$Instance;

    iput-object p3, p0, Lio/grpc/internal/SharedResourceHolder$2;->val$resource:Lio/grpc/internal/SharedResourceHolder$Resource;

    iput-object p4, p0, Lio/grpc/internal/SharedResourceHolder$2;->val$instance:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/SharedResourceHolder$2;->val$cached:Lio/grpc/internal/SharedResourceHolder$Instance;

    iget v1, v1, Lio/grpc/internal/SharedResourceHolder$Instance;->refcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lio/grpc/internal/SharedResourceHolder$2;->val$resource:Lio/grpc/internal/SharedResourceHolder$Resource;

    iget-object v3, p0, Lio/grpc/internal/SharedResourceHolder$2;->val$instance:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lio/grpc/internal/SharedResourceHolder$Resource;->close(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    invoke-static {v2}, Lio/grpc/internal/SharedResourceHolder;->access$000(Lio/grpc/internal/SharedResourceHolder;)Ljava/util/IdentityHashMap;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/SharedResourceHolder$2;->val$resource:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    invoke-static {v2}, Lio/grpc/internal/SharedResourceHolder;->access$000(Lio/grpc/internal/SharedResourceHolder;)Ljava/util/IdentityHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    invoke-static {v2}, Lio/grpc/internal/SharedResourceHolder;->access$100(Lio/grpc/internal/SharedResourceHolder;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iget-object v2, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    invoke-static {v2, v1}, Lio/grpc/internal/SharedResourceHolder;->access$102(Lio/grpc/internal/SharedResourceHolder;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    invoke-static {v3}, Lio/grpc/internal/SharedResourceHolder;->access$000(Lio/grpc/internal/SharedResourceHolder;)Ljava/util/IdentityHashMap;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/internal/SharedResourceHolder$2;->val$resource:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    invoke-static {v3}, Lio/grpc/internal/SharedResourceHolder;->access$000(Lio/grpc/internal/SharedResourceHolder;)Ljava/util/IdentityHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    invoke-static {v3}, Lio/grpc/internal/SharedResourceHolder;->access$100(Lio/grpc/internal/SharedResourceHolder;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iget-object v3, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    invoke-static {v3, v1}, Lio/grpc/internal/SharedResourceHolder;->access$102(Lio/grpc/internal/SharedResourceHolder;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    throw v2

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
