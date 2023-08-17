.class public Lx2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

.field public b:Lx2/e;


# direct methods
.method public constructor <init>(Lx2/e;Lx2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/a;->b:Lx2/e;

    new-instance p2, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-virtual {p1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lx2/a;->a:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lx2/a;->a:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->h()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lx2/a;->a:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->j()V

    return-void
.end method

.method public final c(Ljava/lang/String;Lj0/a;Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 1

    invoke-static {}, Ly2/a;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ly2/a;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p1, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;

    invoke-direct {p1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;-><init>()V

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;->b(Lcom/samsung/android/app/notes/sync/db/s;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;->a(Lj0/a;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;->d(Lcom/samsung/android/app/notes/sync/db/s;)V

    return-void
.end method

.method public final d(ZLjava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;J)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lx2/a;->b:Lx2/e;

    invoke-virtual {p1}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    if-nez p1, :cond_0

    iget-object p1, p0, Lx2/a;->b:Lx2/e;

    invoke-virtual {p1}, Lx2/e;->u()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0, p3, p1}, Lx2/a;->n(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;)V

    iget-object p1, p0, Lx2/a;->b:Lx2/e;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lx2/e;->u()Ljava/util/HashMap;

    move-result-object p1

    :goto_2
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFolderAndDeletedState() : No folderNoteItem = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DocumentOperation"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4, p5}, Lx2/a;->p(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;J)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lx2/a;->b:Lx2/e;

    invoke-virtual {p1}, Lx2/e;->u()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p3, p1}, Lx2/a;->n(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;)V

    iget-object p1, p0, Lx2/a;->b:Lx2/e;

    goto :goto_1

    :cond_4
    :goto_3
    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj0/a;Z)Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lx2/a;->b:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/utils/a;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p3, p4, v7}, Lx2/a;->i(Ljava/lang/String;Lj0/a;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v2, p0, Lx2/a;->b:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p3}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v9, La3/a;

    invoke-direct {v9, p3}, La3/a;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->c()I

    move-result p5

    invoke-virtual {p0, p3, p5}, Lx2/a;->f(Ljava/lang/String;I)Z

    move-result p5

    const-string v2, "DocumentOperation"

    if-eqz p5, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleSavingDoc() : composer is being edited during recovery-> can\'t save "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p0, p3}, Lx2/a;->g(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleSavingDoc() : composer is busy during recovery-> can\'t save "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v2

    iget-wide v4, p4, Lj0/a;->r:J

    cmp-long p5, v2, v4

    if-lez p5, :cond_3

    invoke-virtual {v9, v0}, La3/a;->h(Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result p5

    if-nez p5, :cond_3

    invoke-virtual {p4}, Lj0/a;->i()Ljava/lang/String;

    move-result-object p1

    const-string p2, "The local note is updated right before saving!"

    invoke-virtual {v9, p1, p2}, La3/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->c()I

    move-result p5

    invoke-virtual {p0, p3, p5}, Lx2/a;->f(Ljava/lang/String;I)Z

    move-result p5

    if-eqz p5, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0, p3}, Lx2/a;->g(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-static {}, Ly2/a;->d()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Ly2/a;->d()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return v1

    :cond_6
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, v0

    invoke-virtual/range {v2 .. v8}, Lx2/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj0/a;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p2, p0, Lx2/a;->b:Lx2/e;

    invoke-virtual {p2}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object p2

    invoke-virtual {p4}, Lj0/a;->f()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p3, p5}, Lcom/samsung/android/app/notes/sync/db/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Lx2/a;->l(Ljava/lang/String;Lj0/a;)V

    invoke-virtual {v9, v0}, La3/a;->a(Lcom/samsung/android/app/notes/sync/db/s;)V

    invoke-virtual {p0, p3, p4, v0}, Lx2/a;->c(Ljava/lang/String;Lj0/a;Lcom/samsung/android/app/notes/sync/db/s;)V

    :cond_7
    return p1
.end method

.method public f(Ljava/lang/String;I)Z
    .locals 1
    .param p2    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity$ConflictStrategy;
        .end annotation
    .end param

    if-nez p2, :cond_0

    iget-object p2, p0, Lx2/a;->a:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->l(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isComposerBeingEdited() : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DocumentOperation"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lx2/a;->a:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isComposerBusyNow() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DocumentOperation"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lx2/a;->a:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->m(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/String;Lj0/a;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "DocumentOperation"

    :try_start_0
    invoke-virtual {p2, p3}, Lj0/a;->H(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/support/senl/document/exception/InsufficientStorageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveTargetTempFile() : Exception = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lu0/l;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p1, v0}, Lu0/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lu0/a;->b()V

    new-instance p1, Ls0/c;

    const/16 p3, 0x138

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0, p2}, Ls0/c;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p2

    new-instance p3, Lu0/l;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, p1, v1}, Lu0/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lu0/a;->b()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "saveTargetTempFile() : SyncException = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ls0/c;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveTargetTempFile() : device storage is full = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ls0/c;

    const/16 p3, 0x143

    const-string v0, "device storage is full!"

    invoke-direct {p1, p3, v0, p2}, Ls0/c;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final j(Ljava/lang/String;Lj0/a;)V
    .locals 2

    iget-object p2, p2, Lj0/a;->f:Ll0/c;

    invoke-virtual {p2}, Ll0/c;->m()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ld1/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/a;

    invoke-virtual {v1}, Ld1/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lx2/a;->b:Lx2/e;

    invoke-virtual {p2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesDocumentPageRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;->updateBookmarkList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj0/a;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/s;)Z
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    const-string v9, "createLocalNote_res"

    invoke-virtual/range {p4 .. p4}, Lj0/a;->m()J

    move-result-wide v5

    iget-object v1, v8, Lj0/a;->f:Ll0/c;

    invoke-virtual {v1}, Ll0/c;->o()J

    move-result-wide v1

    iget-object v3, v8, Lj0/a;->f:Ll0/c;

    invoke-virtual {v3}, Ll0/c;->p()J

    move-result-wide v3

    iget-object v10, v8, Lj0/a;->f:Ll0/c;

    invoke-virtual {v10}, Ll0/c;->M()Z

    move-result v10

    invoke-virtual/range {p4 .. p4}, Lj0/a;->p()Z

    move-result v11

    iget-object v12, v7, Lx2/a;->b:Lx2/e;

    invoke-virtual {v12}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v12

    invoke-virtual {v12}, Lf/a;->o()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x148

    if-eqz v11, :cond_1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DocumentOperation"

    const-string/jumbo v1, "updateDocTableInDb() : Current accountGuidHash is empty!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const-string v1, "fail to add WDoc data to app due to empty accountGuidHash!"

    invoke-direct {v0, v13, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v14, v7, Lx2/a;->b:Lx2/e;

    invoke-virtual {v14}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v14

    invoke-virtual {v14, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v14

    if-nez v14, :cond_2

    new-instance v14, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-direct {v14}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;-><init>()V

    const/16 v22, 0x1

    goto :goto_1

    :cond_2
    const/16 v22, 0x0

    :goto_1
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/app/notes/sync/db/s;->q()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, p1

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ".sdocx"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_3
    move-object/from16 v13, v16

    invoke-virtual {v14, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFilePath(Ljava/lang/String;)V

    move-object/from16 v13, p2

    invoke-virtual {v14, v13}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setServerId(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v14, v13}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsDirty(I)V

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setDirtySkipped(Z)V

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsSynced(Z)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setServerTimestamp(Ljava/lang/Long;)V

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setKeepServerTimestamp(Z)V

    invoke-virtual {v14}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTimeSaveParam()Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    move-result-object v13

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->setTime(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-virtual {v14, v10}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsFavorite(I)V

    if-eqz v11, :cond_4

    const/4 v15, 0x5

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v14, v15}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsLock(I)V

    invoke-virtual {v14, v12}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLockAccountGuid(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, p3

    move-object v4, v14

    invoke-virtual/range {v1 .. v6}, Lx2/a;->d(ZLjava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;J)Z

    move-result v1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v16

    iget-object v0, v8, Lj0/a;->f:Ll0/c;

    invoke-virtual {v0}, Ll0/c;->C()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v8, Lj0/a;->f:Ll0/c;

    invoke-virtual {v0}, Ll0/c;->D()Ljava/lang/String;

    move-result-object v19

    iget-object v0, v8, Lj0/a;->f:Ll0/c;

    invoke-virtual {v0}, Ll0/c;->B()J

    move-result-wide v20

    move-object/from16 v17, v14

    invoke-virtual/range {v16 .. v21}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->P(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/lang/String;Ljava/lang/String;J)V

    :try_start_0
    iget-object v0, v7, Lx2/a;->a:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    move-object/from16 v2, p5

    move/from16 v13, v22

    invoke-virtual {v0, v2, v13, v14}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->p(Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    iget-object v1, v7, Lx2/a;->b:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lc3/p;->r(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    return v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v2, v0, Ls0/c;

    if-eqz v2, :cond_7

    check-cast v0, Ls0/c;

    invoke-virtual {v0}, Ls0/c;->a()I

    move-result v2

    const/16 v3, 0x151

    if-eq v2, v3, :cond_6

    invoke-virtual {v0}, Ls0/c;->a()I

    move-result v2

    const/16 v3, 0x1fa

    if-ne v2, v3, :cond_7

    :cond_6
    throw v0

    :cond_7
    new-instance v0, Ls0/c;

    const-string v2, "Failed to saveWDocFileSync"

    const/16 v3, 0x148

    invoke-direct {v0, v3, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v1, :cond_8

    iget-object v1, v7, Lx2/a;->b:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lc3/p;->r(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    throw v0
.end method

.method public final l(Ljava/lang/String;Lj0/a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lx2/a;->o(Ljava/lang/String;Lj0/a;)V

    invoke-virtual {p0, p1, p2}, Lx2/a;->j(Ljava/lang/String;Lj0/a;)V

    invoke-virtual {p0, p1, p2}, Lx2/a;->m(Ljava/lang/String;Lj0/a;)V

    return-void
.end method

.method public final m(Ljava/lang/String;Lj0/a;)V
    .locals 9

    iget-object v0, p2, Lj0/a;->f:Ll0/c;

    invoke-virtual {v0}, Ll0/c;->y()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lj0/a;->f:Ll0/c;

    invoke-virtual {v1}, Ll0/c;->x()J

    move-result-wide v5

    iget-object p2, p2, Lj0/a;->f:Ll0/c;

    invoke-virtual {p2}, Ll0/c;->L()Z

    move-result v4

    new-instance p2, Lcom/samsung/android/app/notes/sync/db/o;

    iget-object v1, p0, Lx2/a;->b:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, v0}, Lcom/samsung/android/app/notes/sync/db/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/db/o;->g()J

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    const-string v2, "DocumentOperation"

    if-nez v1, :cond_0

    const-string p1, "[Converted] updateMappedDocDb() : can\'t add a mapped entry due to the old note!"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/db/o;->g()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-ltz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Converted] updateMappedDocDb() : mappedAt(="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " >= LastMappedAt(="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/db/o;->g()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> Insert an entry to MappedDocument"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lr0/c;

    iget-object v2, p0, Lx2/a;->b:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lr0/c;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lr0/c;->b(Ljava/lang/String;Ljava/lang/String;ZJ)Landroid/util/Pair;

    goto :goto_0

    :cond_1
    const-string p1, "[Converted] updateMappedDocDb() : can\'t add a mapped entry due to the old mappedAt!"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lx2/a;->b:Lx2/e;

    invoke-virtual {p1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMappedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/db/o;->g()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;->delete(Ljava/lang/String;J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final n(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePendedFolderInfoForNote() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentOperation"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    const-string/jumbo v2, "trashed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v4, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    const-string v5, "root"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "trash:///"

    const-string/jumbo v6, "uncategorized:///"

    if-eqz v4, :cond_2

    iget-object v4, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iput-object v5, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    goto :goto_3

    :cond_1
    :goto_2
    iput-object v6, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    goto :goto_3

    :cond_2
    iget-object v4, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->restorePath:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePendedFolderInfoForNote() : trashed but not correct folder = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePendedFolderInfoForNote() : not trashed but not correct folder = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v2, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePendedFolderInfoForNote() : old uncategorized new note : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    :cond_5
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsDeleted(I)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/g;

    iget-object v2, p0, Lx2/a;->b:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/app/notes/sync/db/g;-><init>(Landroid/content/Context;)V

    iget-object v2, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->find(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/notes/sync/db/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePendedFolderInfoForNote() : No folder uuid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , note : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :goto_4
    iget-object v0, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    :goto_5
    iget-wide v0, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setCategoryServerTimeStamp(Ljava/lang/Long;)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setCategoryIsDirty(I)V

    iget-wide v0, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->recyclerBinMovedTime:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setRecycleBinTimeMoved(J)V

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->restorePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setAbsolutePath(Ljava/lang/String;)V

    return-void
.end method

.method public final o(Ljava/lang/String;Lj0/a;)V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p2, p2, Lj0/a;->f:Ll0/c;

    invoke-virtual {p2}, Ll0/c;->K()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p2, p0, Lx2/a;->b:Lx2/e;

    invoke-virtual {p2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->getTagListByDocUuid(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lx2/a;->b:Lx2/e;

    invoke-virtual {p2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    move-result-object p2

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v0, p1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->updateTagsByDocUuid(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Z)Z

    return-void
.end method

.method public p(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUnCategorizedForNote() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentOperation"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsDeleted(I)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setCategoryServerTimeStamp(Ljava/lang/Long;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setCategoryIsDirty(I)V

    const-wide/16 v0, 0x1

    sub-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setServerTimestamp(Ljava/lang/Long;)V

    iget-object p1, p0, Lx2/a;->b:Lx2/e;

    invoke-virtual {p1}, Lx2/e;->r()Ljava/lang/String;

    move-result-object p1

    const-string p2, "eyJ2ZXJzaW9uIjowLCJlbmNyeXB0ZWRHdWlkIjoiIiwicmVxdWVzdFRpbWVTdGFtcCI6MCwibW9kaWZpZWRUaW1lIjowLCJhcHBWZXJzaW9uIjoiMCIsInNka1ZlcnNpb24iOiIwIiwicHVycG9zZSI6IklOSVRJQUwiLCJ0eXBlIjoiRk9MREVSIn0="

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lx2/a;->b:Lx2/e;

    invoke-virtual {p1, p2}, Lx2/e;->y(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
