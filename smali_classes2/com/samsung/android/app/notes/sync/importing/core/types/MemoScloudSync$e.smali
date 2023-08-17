.class public Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->startImport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld1/d;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:[Ls0/c;

.field public final synthetic e:[Ljava/lang/Boolean;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;Ld1/d;Ljava/lang/String;Ljava/util/List;[Ls0/c;[Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->a:Ld1/d;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->d:[Ls0/c;

    iput-object p6, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->e:[Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->access$500(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->access$600(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->access$700(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->MEMO_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->a:Ld1/d;

    invoke-interface {v2, v3, v4, v1}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onDownloaded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ld1/d;I)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->a:Ld1/d;

    invoke-virtual {v0}, Ld1/d;->i()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v3, La2/b;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->a(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lo/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, La2/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ld1/f;

    invoke-direct {v6}, Ld1/f;-><init>()V

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->a:Ld1/d;

    invoke-static {v0, v3, v2, v4, v6}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->b(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;La2/b;Ljava/lang/String;Ld1/d;Ld1/f;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->a:Ld1/d;

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->c:Ljava/util/List;

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->c(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;La2/b;Ljava/lang/String;Ld1/d;Ld1/f;Ljava/util/List;)V
    :try_end_1
    .catch Ls0/c; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "MemoScloudSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startImport() : SyncException0 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ls0/c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->d:[Ls0/c;

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->e:[Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->d:[Ls0/c;

    aput-object v0, v3, v1

    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->access$800(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->access$900(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v3}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->access$1000(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->MEMO_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->a:Ld1/d;

    invoke-interface {v3, v4, v5, v2}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onDownloaded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ld1/d;I)V

    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :cond_4
    :goto_2
    const/4 v0, 0x0

    const-string v3, "1"

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->f:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->a:Ld1/d;

    invoke-virtual {v5}, Ld1/d;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v3}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->access$1100(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v1}, Lcom/samsung/android/app/notes/sync/db/n;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const-string v1, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->h()Lb0/a;

    move-result-object v1

    invoke-interface {v1, v3}, Lb0/a;->getCategoryDeleted(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->access$1200(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/samsung/android/app/notes/sync/db/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->a:Ld1/d;

    invoke-virtual {v2}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/MEMO_DATA/"

    const-string v5, "/MEMO_DATA_V_1/"

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    const-string v2, "MemoScloudSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "try to convertToSDoc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->a:Ld1/d;

    invoke-virtual {v6}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->f()Lx/d;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v5}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->access$1300(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->a:Ld1/d;

    invoke-virtual {v7}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6, v1, v3}, Lx/d;->jsonConverterConvertToSDoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MemoScloudSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "succeed to convert"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->a:Ld1/d;

    invoke-virtual {v3}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->g:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->access$1400(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->a:Ld1/d;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catch_1
    :try_start_6
    const-string v1, "MemoScloudSync"

    const-string v2, "startImport() : Failed to convert memo!"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->m()Lb0/b;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;->a:Ld1/d;

    invoke-virtual {v2}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lb0/b;->setNoteSyncName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_7
    const-string v1, "MemoScloudSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startImport() : SyncException1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    monitor-exit v4

    return-void

    :goto_5
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method
