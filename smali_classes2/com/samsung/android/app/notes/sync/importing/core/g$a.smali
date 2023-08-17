.class public Lcom/samsung/android/app/notes/sync/importing/core/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/core/g;->onReceived(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/importing/core/g;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/g;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/g$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/g$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/g;

    iget-object v1, v0, Lcom/samsung/android/app/notes/sync/importing/core/a;->a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

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

    const/high16 p2, 0x4000000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/samsung/android/app/notes/sync/importing/core/a;->onImportError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onReceived(Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/g$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/g$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/g;

    iget v2, v1, Lcom/samsung/android/app/notes/sync/importing/core/a;->m:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_0

    new-instance v2, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    iget-object v8, p0, Lcom/samsung/android/app/notes/sync/importing/core/g$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/g;

    iget-object v6, v8, Lcom/samsung/android/app/notes/sync/importing/core/a;->b:Landroid/content/Context;

    const/4 v9, 0x3

    iget-object v10, v8, Lcom/samsung/android/app/notes/sync/importing/core/a;->e:Ljava/util/List;

    move-object v5, v2

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;ILjava/util/List;)V

    :goto_0
    iput-object v2, v1, Lcom/samsung/android/app/notes/sync/importing/core/a;->c:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, v1, Lcom/samsung/android/app/notes/sync/importing/core/a;->c:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_1
    new-instance v2, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/g$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/g;

    iget-object v5, v3, Lcom/samsung/android/app/notes/sync/importing/core/a;->b:Landroid/content/Context;

    invoke-direct {v2, v5, p1, v3, v4}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;I)V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/g$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/g;

    iget-object v1, p1, Lcom/samsung/android/app/notes/sync/importing/core/a;->c:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    iput v2, p1, Lcom/samsung/android/app/notes/sync/importing/core/a;->l:I

    iget-object p1, p1, Lcom/samsung/android/app/notes/sync/importing/core/a;->d:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, p1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
