.class public Lw0/e;
.super Lw0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw0/a;-><init>()V

    const/high16 v0, 0x40000

    iput v0, p0, Lw0/a;->c:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    invoke-virtual {p0}, Lw0/e;->e()V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lw0/e;->e()V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lt0/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lc3/q;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lt0/i;->a:Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    const-string v1, "CONVERT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->isRunning(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SyncErrorSyncBlockedByInternalTasks"

    if-eqz v0, :cond_1

    const-string v0, "Fail to sync due to Converting"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    const-string v2, "RESTORE_TASK"

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Fail to sync due to Restoring"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    const-string v2, "COEDIT_SERVICE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Fail to sync due to Composing a coEdit note"

    goto :goto_0

    :cond_3
    const-string v0, "Fail to sync due to the unknown type"

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lw0/a;->d()V

    return-void
.end method
