.class public Lz0/f;
.super Lz0/a;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;


# instance fields
.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->MEMO_LOCAL:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lz0/a;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Z)V

    iput-boolean v1, p0, Lz0/f;->o:Z

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/notes/sync/importing/core/a;->h(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    return-void
.end method


# virtual methods
.method public m(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setExtraData. fromSmartSwitch : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SSSNoteImportHelper"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p3, p0, Lz0/f;->o:Z

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " errMsg = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/notes/sync/importing/core/a;->onImportError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->m:I

    const/4 p2, 0x1

    const/4 v0, 0x2

    if-eq p1, p2, :cond_1

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/app/notes/sync/importing/core/types/SSSNoteSync;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->b:Landroid/content/Context;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->e:Ljava/util/List;

    iget-boolean v6, p0, Lz0/f;->o:Z

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/notes/sync/importing/core/types/SSSNoteSync;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;ILjava/util/List;Z)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->c:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->c:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Lcom/samsung/android/app/notes/sync/importing/core/types/SSSNoteSync;

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lz0/f;->o:Z

    invoke-direct {p1, p2, p0, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/types/SSSNoteSync;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;IZ)V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->c:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

    if-eqz p1, :cond_2

    const/4 p2, 0x3

    iput p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/a;->d:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
