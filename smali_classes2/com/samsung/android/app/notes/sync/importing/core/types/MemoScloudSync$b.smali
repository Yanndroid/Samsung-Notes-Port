.class public Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->getImportItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ld1/d;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;Ljava/lang/String;Ld1/d;Ljava/util/List;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->b:Ld1/d;

    iput-object p4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->c:Ljava/util/List;

    iput p5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->d:I

    iput p6, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v2, La2/b;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->a(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lo/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, La2/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ld1/f;

    invoke-direct {v0}, Ld1/f;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->b:Ld1/d;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->b(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;La2/b;Ljava/lang/String;Ld1/d;Ld1/f;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->b:Ld1/d;

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->c:Ljava/util/List;

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->c(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;La2/b;Ljava/lang/String;Ld1/d;Ld1/f;Ljava/util/List;)V
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->b:Ld1/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Ld1/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ld1/d;->R(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->b:Ld1/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld1/d;->O(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->access$000(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->access$100(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v2, "MemoScloudSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call mListener.onUpdated() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->d:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->access$200(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    iget-object v3, v3, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iget v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->d:I

    add-int/2addr v4, v1

    iget v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->e:I

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;->b:Ld1/d;

    invoke-interface {v2, v3, v4, v1, v5}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onUpdated(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILd1/d;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "MemoScloudSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImportItems : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ls0/c; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MemoScloudSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImportItems : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
