.class public Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloaded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ld1/d;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->b(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Lcom/samsung/android/app/notes/sync/importing/core/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->e()I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->a(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "ImportLogic"

    const-string v2, "TipCard onUpdate(IMPORT)"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->d(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Lb3/u;

    move-result-object v1

    invoke-virtual {v1, p2}, Lb3/u;->e(I)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    move-result-object p2

    check-cast p2, Lb3/t;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->a(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->a:I

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->a(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->b:I

    add-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->setProgressInfo(III)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->setState(I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->d(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Lb3/u;

    move-result-object v1

    invoke-virtual {v1, p2}, Lb3/u;->x(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    const-string p2, "ImportLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Import "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->a(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->b:I

    add-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->a(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    const-string p1, " Downloading..."

    goto :goto_0

    :cond_0
    const-string p1, " Converting..."

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public onGetListEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 2

    const-string v0, "ImportLogic"

    const-string v1, "mImportListener : onGetListEnded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V

    return-void
.end method

.method public onImportEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 2

    const-string v0, "ImportLogic"

    const-string v1, "mImportListener : onImportEnded() without item"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V

    return-void
.end method

.method public onImportEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ImportLogic"

    const-string v1, "mImportListener : onImportEnded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->a(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->a(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    move-result-object v1

    iget v2, v1, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->b:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr v2, p2

    iput v2, v1, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->b:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    const/4 v0, 0x3

    invoke-static {p2, p1, v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onImportError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "ImportLogic"

    const-string v1, "mImportListener : onError()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->g(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;)V

    sget-object p3, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SNOTE_GOOGLEDRIVE:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    if-ne p1, p3, :cond_1

    const/high16 p3, -0x80000000

    if-ne p2, p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {p3}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->c(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Ljava/util/ArrayList;

    move-result-object p3

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->c(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->c(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La1/a;

    invoke-interface {v1, p1, p2, p4}, La1/a;->c(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    monitor-exit p3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public onImportStart(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 0

    return-void
.end method

.method public onItemImportFinished(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;III)V
    .locals 0

    return-void
.end method

.method public onUpdated(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILd1/d;)V
    .locals 4

    const-string v0, "ImportLogic"

    const-string v1, "mImportListener : onUpdated()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->c(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->d(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Lb3/u;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lb3/u;->e(I)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    move-result-object v1

    check-cast v1, Lb3/t;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, p3, p2, v2}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->setProgressInfo(III)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->c(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->c(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La1/a;

    invoke-interface {v2, p1, p2, p3, p4}, La1/a;->onUpdated(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILd1/d;)V

    goto :goto_0

    :cond_1
    const-string v1, "ImportLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdated - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ld1/d;->m()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
