.class public Lcom/samsung/android/app/notes/sync/db/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

.field public final b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createSyncNoteDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/db/t;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)V
    .locals 0

    or-int/2addr p2, p3

    iget-object p3, p0, Lcom/samsung/android/app/notes/sync/db/t;->a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->updateCorrupted(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SyncDelete] deleteAfterServerUpdate, docUUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", callee: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WDocWriteResolver"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/db/t;->c:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->deleteEntityFromDocumentTable(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SyncDelete] deleteAllNoteData, docUUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", callee: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WDocWriteResolver"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/db/t;->c:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->deleteAllNoteData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;II)V
    .locals 0

    not-int p3, p3

    and-int/2addr p2, p3

    iget-object p3, p0, Lcom/samsung/android/app/notes/sync/db/t;->a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->updateCorrupted(Ljava/lang/String;I)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetConflicted() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WDocWriteResolver"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateConflict(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public f(I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->resetIsSyncFailed(I)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCommitId() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WDocWriteResolver"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateCommitId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "setConflicted() : "

    const-string v2, "WDocWriteResolver"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " by the remote device!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateConflict(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public i(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateCategoryServerTimestamp(Ljava/lang/String;J)V

    return-void
.end method

.method public j(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateIsSyncFailed(Ljava/lang/String;I)V

    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateMsConnectedNotes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public l(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->setNoteDeleted(Ljava/lang/String;I)V

    return-void
.end method

.method public m(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateDirty(Ljava/lang/String;I)V

    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->setNoteFolder(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v1, p10

    iget-object v3, v0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->isExist(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, v0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v4, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    const-string/jumbo v3, "trashed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x2

    :cond_0
    const-string v6, "root"

    move-object v7, p2

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v8, "uncategorized:///"

    if-eqz v6, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "trash:///"

    move-object v7, v1

    goto :goto_0

    :cond_1
    move-object v7, v8

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNoteFolder, sDocUUID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", folderUUID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WDocWriteResolver"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNoteFolder, Fix parent UUID "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    :cond_3
    if-nez v4, :cond_4

    iget-object v1, v0, Lcom/samsung/android/app/notes/sync/db/t;->a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->createOrUpdateSyncInfoEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;

    move-result-object v4

    :cond_4
    move-object v11, v4

    iget-object v1, v0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-object v2, p1

    move v3, v5

    move-object v4, v7

    move-wide/from16 v5, p4

    move v7, p3

    move-wide/from16 v8, p8

    move-object/from16 v10, p11

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateEntityBySetNoteFolder(Ljava/lang/String;ILjava/lang/String;JIJLjava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v1, v11}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;)V

    const/4 v1, 0x1

    return v1

    :cond_5
    return v5
.end method

.method public p(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateDirtyCategory(Ljava/lang/String;I)V

    return-void
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->setMdeItemId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateNoteServerId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateNoteServerIdAndDirty(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateNoteSyncName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->updateCategory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateServerTimestamp(Ljava/lang/String;J)V

    return-void
.end method

.method public w(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateCreatedAt(Ljava/lang/String;J)V

    return-void
.end method

.method public x(II)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateIsDirtyByIsSyncFailed(II)V

    return-void
.end method

.method public y(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateModifiedTime(Ljava/lang/String;J)V

    return-void
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/t;->b:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateMsConnectedNotesId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
