.class public Lx2/g;
.super Lx2/f;
.source "SourceFile"


# instance fields
.field public b:Lx2/e;


# direct methods
.method public constructor <init>(Lx2/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lx2/f;-><init>(Lx2/d;)V

    iput-object p1, p0, Lx2/g;->b:Lx2/e;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lx2/g;->o(Z)V

    invoke-virtual {p0}, Lx2/g;->m()V

    invoke-super {p0}, Lx2/f;->c()V

    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/l;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Cancelled SyncWDoc due to no SCloud package!"

    const-string v1, "SyncProcessTask$SyncOperationSDocx"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls0/c;

    const/16 v2, 0x25b

    invoke-direct {v1, v2, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device storage is full ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncProcessTask$SyncOperationSDocx"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ls0/c;

    const/16 v0, 0x143

    const-string v1, "device storage is full!"

    invoke-direct {p1, v0, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public h(Lp2/a;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p1}, Lp2/a;->isCancelled()Z

    move-result p1

    const-string v0, "SyncProcessTask$SyncOperationSDocx"

    const-string v1, "cancel to "

    if-nez p1, :cond_1

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object p1

    invoke-virtual {p1}, Ln/a;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "due to syncDisable!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ls0/c;

    const/16 v0, 0x260

    invoke-direct {p2, v0, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ls0/c;

    const/16 v0, 0x25a

    invoke-direct {p2, v0, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ls0/c;

    const/16 v1, 0x162

    const-string v2, "Cancelled SyncWDoc due to loggedOut!"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lx2/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/HashUtils;->generateSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SyncProcessTask$SyncOperationSDocx"

    if-eqz v0, :cond_1

    const-string v0, "Account changed!"

    goto :goto_0

    :cond_1
    const-string v0, "Account changed really!"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lx2/g;->c()V

    invoke-static {p1}, Lx2/c;->A(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lx2/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App version changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncProcessTask$SyncOperationSDocx"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lx2/g;->n()V

    iget-object v0, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->isLastWDocSyncTimeToBeClear(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lx2/g;->o(Z)V

    iget-object v1, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->setLastWDocSyncTimeToBeClear(Landroid/content/Context;Z)V

    :cond_0
    invoke-virtual {p0}, Lx2/g;->m()V

    invoke-static {p1}, Lx2/c;->B(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public l(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/samsung/android/app/notes/sync/db/g;

    iget-object v1, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/samsung/android/app/notes/sync/db/g;-><init>(Landroid/content/Context;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/notes/sync/db/g;->c(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRepairNoteFolder() : repair recycleBin state note "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of folder "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to recycleBin"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SyncProcessTask$SyncOperationSDocx"

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {p1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, v0, p3}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->delete(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public m()V
    .locals 4

    const-string v0, "eyJ2ZXJzaW9uIjowLCJlbmNyeXB0ZWRHdWlkIjoiIiwicmVxdWVzdFRpbWVTdGFtcCI6MCwibW9kaWZpZWRUaW1lIjowLCJhcHBWZXJzaW9uIjoiMCIsInNka1ZlcnNpb24iOiIwIiwicHVycG9zZSI6IklOSVRJQUwiLCJ0eXBlIjoiRk9MREVSIn0="

    invoke-static {v0}, Lx2/c;->C(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/g;

    iget-object v1, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/db/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/g;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v2}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/notes/sync/db/i;->j(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/app/notes/sync/db/t;->x(II)V

    iget-object v0, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/db/t;->f(I)V

    return-void
.end method

.method public o(Z)V
    .locals 5

    const-string v0, "eyJ2ZXJzaW9uIjowLCJlbmNyeXB0ZWRHdWlkIjoiIiwicmVxdWVzdFRpbWVTdGFtcCI6MCwibW9kaWZpZWRUaW1lIjowLCJhcHBWZXJzaW9uIjoiMCIsInNka1ZlcnNpb24iOiIwIiwicHVycG9zZSI6IklOSVRJQUwiLCJ0eXBlIjoiTk9URSJ9"

    invoke-static {v0}, Lx2/c;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->q()Lcom/samsung/android/app/notes/sync/db/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/f;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v3}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v3

    if-eqz p1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Lcom/samsung/android/app/notes/sync/db/t;->s(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/app/notes/sync/db/t;->m(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public p()V
    .locals 7

    const-string v0, "SyncProcessTask$SyncOperationSDocx"

    const-string v1, "deleteAllServerFolders() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "eyJ2ZXJzaW9uIjowLCJlbmNyeXB0ZWRHdWlkIjoiIiwicmVxdWVzdFRpbWVTdGFtcCI6MCwibW9kaWZpZWRUaW1lIjowLCJhcHBWZXJzaW9uIjoiMCIsInNka1ZlcnNpb24iOiIwIiwicHVycG9zZSI6IklOSVRJQUwiLCJ0eXBlIjoiRk9MREVSIn0="

    invoke-static {v1}, Lx2/c;->C(Ljava/lang/String;)V

    new-instance v1, Lq2/b;

    iget-object v2, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v2}, Lx2/e;->p()La2/g$a;

    move-result-object v2

    iget-object v3, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lx2/c;->k()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lq2/b;-><init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;La2/g$b;)V

    invoke-virtual {v1}, Lq2/b;->c()Le1/f;

    move-result-object v1

    invoke-virtual {v1}, Le1/f;->b()Le1/f$a;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "deleteAllServerFolders() : No server change!"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Le1/f;->b()Le1/f$a;

    move-result-object v1

    iget-object v1, v1, Le1/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    iget-object v4, v3, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    const-string v6, "deleted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-object v6, v3, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v2, Le1/l;

    iget-object v3, p0, Lx2/g;->b:Lx2/e;

    invoke-direct {v2, v1, v3}, Le1/l;-><init>(Ljava/util/ArrayList;Lx2/e;)V

    new-instance v1, Lq2/c;

    iget-object v3, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v3}, Lx2/e;->p()La2/g$a;

    move-result-object v3

    iget-object v4, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v4}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2, v5}, Lq2/c;-><init>(La2/g$a;Landroid/content/Context;Le1/l;La2/g$b;)V

    invoke-virtual {v1}, Lq2/c;->d()V

    const-string v1, "deleteAllServerFolders() finish"

    goto :goto_0
.end method

.method public q()V
    .locals 10

    const-string v0, "SyncProcessTask$SyncOperationSDocx"

    const-string v1, "deleteAllServerNotes() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "eyJ2ZXJzaW9uIjowLCJlbmNyeXB0ZWRHdWlkIjoiIiwicmVxdWVzdFRpbWVTdGFtcCI6MCwibW9kaWZpZWRUaW1lIjowLCJhcHBWZXJzaW9uIjoiMCIsInNka1ZlcnNpb24iOiIwIiwicHVycG9zZSI6IklOSVRJQUwiLCJ0eXBlIjoiTk9URSJ9"

    :goto_0
    invoke-static {v1}, Lx2/c;->I(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lu2/a;

    iget-object v2, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v2}, Lx2/e;->p()La2/g$a;

    move-result-object v2

    iget-object v3, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lx2/c;->t()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lu2/a;-><init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;La2/g$b;)V

    invoke-virtual {v1}, Lu2/a;->c()Le1/g;

    move-result-object v1

    invoke-virtual {v1}, Le1/g;->d()Le1/g$a;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v1, "deleteAllServerNotes() : no server change!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Le1/g;->d()Le1/g$a;

    move-result-object v2

    iget-boolean v2, v2, Le1/g$a;->d:Z

    if-eqz v2, :cond_2

    const-string v2, "deleteAllServerNotes() : already deleted!"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Le1/g;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v9, Lu2/e;

    iget-object v2, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v2}, Lx2/e;->p()La2/g$a;

    move-result-object v3

    iget-object v2, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Le1/g;->d()Le1/g$a;

    move-result-object v2

    iget-object v5, v2, Le1/g$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lu2/e;-><init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;JLa2/g$b;)V

    invoke-virtual {v9}, Lu2/e;->c()V

    iget-object v2, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v2}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v2

    invoke-virtual {v1}, Le1/g;->d()Le1/g$a;

    move-result-object v3

    iget-object v3, v3, Le1/g$a;->b:Ljava/lang/String;

    const-string v4, "deleteAllServerNotes"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/notes/sync/db/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Le1/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lx2/c;->I(Ljava/lang/String;)V

    invoke-virtual {v1}, Le1/g;->b()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    const-string v1, "deleteAllServerNotes() finish"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public r(Ljava/lang/String;)Lj0/a;
    .locals 3

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v1, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lj0/a;

    iget-object v2, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lj0/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lj0/a;->v(Ljava/lang/String;)V

    return-object v1
.end method

.method public s(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/t;

    iget-object v1, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/notes/sync/db/t;->i(Ljava/lang/String;J)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/i;

    iget-object v1, p0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/db/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/notes/sync/db/i;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public t()V
    .locals 22

    move-object/from16 v0, p0

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/g;

    iget-object v2, v0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/notes/sync/db/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/g;->i()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, " is later than "

    const-string v6, "normal"

    const-string v7, " -> no parentId = "

    const-string v8, "SyncProcessTask$SyncOperationSDocx"

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    iget-object v9, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    iget-object v11, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    sget-object v10, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string/jumbo v13, "trashed"

    const-string v14, "repairFoldersAndNotes() : folder "

    if-eqz v12, :cond_1

    iget-object v12, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is deleted correctly?"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v9}, Lcom/samsung/android/app/notes/sync/db/g;->s(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    if-nez v12, :cond_4

    iget-object v5, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v5}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object v5

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v12

    iget-wide v6, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    const-wide/16 v8, 0x1

    add-long v13, v6, v8

    const/4 v15, 0x1

    move-object v10, v5

    invoke-virtual/range {v10 .. v15}, Lcom/samsung/android/app/notes/sync/db/i;->k(Ljava/lang/String;Ljava/lang/String;JI)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "repairFoldersAndNotes() : trashed folder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-wide v6, v12, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    iget-wide v12, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    cmp-long v6, v6, v12

    if-gez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lr0/a;

    iget-object v6, v0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v6}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lr0/a;-><init>(Landroid/content/Context;)V

    iget-object v6, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    iget-wide v7, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    invoke-virtual {v5, v6, v7, v8}, Lr0/a;->I(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_5
    new-instance v3, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v4, v0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v4}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->dumpDocument()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v10

    const-string v12, ".sdoc"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v1, v9}, Lcom/samsung/android/app/notes/sync/db/g;->r(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_1

    :cond_8
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    if-nez v10, :cond_a

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_9

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDirty()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v4}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v4

    const-string v9, "[1]repairFoldersAndNotes"

    invoke-virtual {v4, v11, v9}, Lcom/samsung/android/app/notes/sync/db/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v10

    if-nez v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "repairFoldersAndNotes() : [2]normal note "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v9}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v10

    sget-object v9, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const-string v20, "normal"

    const-string v21, ""

    invoke-virtual/range {v10 .. v21}, Lcom/samsung/android/app/notes/sync/db/t;->o(Ljava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_a
    iget-object v12, v10, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    if-ne v12, v6, :cond_b

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "repairFoldersAndNotes() : [3]trashed note "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is set to normal!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v12}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13}, Lcom/samsung/android/app/notes/sync/db/t;->l(Ljava/lang/String;I)V

    :cond_b
    iget-wide v12, v10, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getCategoryServerTimeStamp()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "repairFoldersAndNotes() : [4]note "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lr0/a;

    iget-object v11, v0, Lx2/g;->b:Lx2/e;

    invoke-virtual {v11}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Lr0/a;-><init>(Landroid/content/Context;)V

    iget-object v10, v10, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getCategoryServerTimeStamp()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lr0/a;->I(Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_c
    return-void
.end method
