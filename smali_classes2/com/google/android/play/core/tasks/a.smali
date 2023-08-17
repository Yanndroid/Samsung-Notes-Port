.class final Lcom/google/android/play/core/tasks/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/tasks/Task;

.field public final synthetic b:Lcom/google/android/play/core/tasks/b;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/tasks/b;Lcom/google/android/play/core/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/tasks/a;->b:Lcom/google/android/play/core/tasks/b;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/a;->a:Lcom/google/android/play/core/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/tasks/a;->b:Lcom/google/android/play/core/tasks/b;

    invoke-static {v0}, Lcom/google/android/play/core/tasks/b;->a(Lcom/google/android/play/core/tasks/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/a;->b:Lcom/google/android/play/core/tasks/b;

    invoke-static {v1}, Lcom/google/android/play/core/tasks/b;->b(Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/OnCompleteListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/tasks/a;->b:Lcom/google/android/play/core/tasks/b;

    invoke-static {v1}, Lcom/google/android/play/core/tasks/b;->b(Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/OnCompleteListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/tasks/a;->a:Lcom/google/android/play/core/tasks/Task;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/tasks/OnCompleteListener;->onComplete(Lcom/google/android/play/core/tasks/Task;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
