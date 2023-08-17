.class public Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "InternalImportHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->getSnapError()I

    move-result p0

    return p0
.end method

.method private copyToCoeditSpace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p4}, Lm/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v0

    invoke-virtual {v0}, Lv/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ".sdocx"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentFileUtils;->createSavedPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lv/d;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "copyToCoeditSpace, failed : empty Id exists, group id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ownerId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InternalImportHandler"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x6e

    return p1
.end method

.method private copyToCoeditSpace(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p3}, Lm/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v3

    invoke-virtual {v3}, Lv/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "InternalImportHandler"

    if-nez v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v4, v3, p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->copyToCoeditSpace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/16 v6, 0x64

    if-ne v4, v6, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "copyToCoeditSpace, failed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "copyToCoeditSpace, failed : empty Id exists, group id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ownerId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private createExternalCoeditUploadItem(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->isValidUploadEntry(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createExternalCoeditUploadItem, groupId not exist "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InternalImportHandler"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;->setGroupId(Ljava/lang/String;)V

    return-object v1
.end method

.method private generateImportResult(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;
    .locals 4

    iget v0, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    invoke-direct {p1, v1, v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->newUuidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->newPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->newUuidList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->newPathList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget p1, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_2
    :goto_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    iget p1, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    invoke-direct {v0, v1, v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private getSnapError()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xcc

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xcb

    return v0

    :cond_1
    const/16 v0, 0xca

    return v0
.end method

.method private importNoteToCoeditInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning()Z

    move-result v1

    const/16 v2, 0xcc

    const-string v3, "InternalImportHandler"

    if-eqz v1, :cond_0

    const-string p1, "importNoteToCoeditInternal, stop, isRunningOnCoeditMode"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->copyToCoeditSpace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "importNoteToCoeditInternal, copyResult : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    const/16 p3, 0x64

    if-eq p2, p3, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    new-instance p2, Lcom/samsung/android/app/notes/sync/db/t;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning()Z

    move-result p3

    if-eqz p3, :cond_2

    iput v2, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    invoke-direct {p0, v1, p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->releaseFailedImportItem(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/t;Landroid/content/Context;)V

    return-object v0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result p3

    if-nez p3, :cond_3

    const/16 p3, 0xcb

    iput p3, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    invoke-direct {p0, v1, p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->releaseFailedImportItem(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/t;Landroid/content/Context;)V

    return-object v0

    :cond_3
    new-instance p3, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-direct {p3, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getShareSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->createExternalCoeditUploadItem(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;

    move-result-object p3

    if-nez p3, :cond_4

    const/16 p3, 0xca

    iput p3, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    invoke-direct {p0, v1, p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->releaseFailedImportItem(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/t;Landroid/content/Context;)V

    return-object v0

    :cond_4
    const/16 p1, 0xc8

    iput p1, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    iget-object p1, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->newUuidList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->newPathList:Ljava/util/List;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;->getEntry()Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "importNoteToCoeditInternal, exception : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private importNoteToCoeditInternal(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lj/a;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lj/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lj/a;",
            ")",
            "Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    new-instance v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning()Z

    move-result v4

    const/16 v5, 0xcc

    const-string v6, "InternalImportHandler"

    if-eqz v4, :cond_0

    const-string v0, "importNoteToCoeditInternal, stop, isRunningOnCoeditMode"

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    return-object v3

    :cond_0
    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->copyToCoeditSpace(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "importNoteToCoeditInternal, requestDocUuidSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", copiedUuidSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", copyFailedDocSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    if-ne v9, v8, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v11, 0x64

    if-eq v9, v11, :cond_1

    iput v9, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    iput v10, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->uploadFailedCount:I

    iput v8, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->copyFailedCount:I

    return-object v3

    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/16 v8, 0xca

    if-eqz v4, :cond_3

    iput v8, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    iput v10, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->uploadFailedCount:I

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->copyFailedCount:I

    return-object v3

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x3

    :try_start_0
    new-instance v12, Lcom/samsung/android/app/notes/sync/db/t;

    invoke-direct {v12, v0}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->m(I)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning()Z

    move-result v15

    if-eqz v15, :cond_5

    iput v5, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    :cond_4
    :goto_1
    invoke-direct {v1, v4, v14, v12, v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->processFailedImportItem(Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/t;Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result v15

    if-nez v15, :cond_6

    const/16 v15, 0xcb

    iput v15, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    goto :goto_1

    :cond_6
    new-instance v15, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-direct {v15, v0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v14}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getShareSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->createExternalCoeditUploadItem(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;

    move-result-object v15

    if-nez v15, :cond_7

    iput v8, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    goto :goto_1

    :cond_7
    invoke-direct {v1, v0, v15}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->uploadSpenWNote(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;)I

    move-result v5

    iput v5, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    const/16 v9, 0xc8

    if-ne v5, v9, :cond_4

    new-instance v5, Lcom/samsung/android/app/notes/sync/db/s;

    invoke-direct {v5, v0, v14}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/app/notes/sync/db/s;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->newUuidList:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->newPathList:Ljava/util/List;

    invoke-virtual {v15}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;->getEntry()Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iput v8, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_9

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v10, v5}, Lj/a;->onProgress(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    const/16 v5, 0xcc

    goto :goto_0

    :cond_a
    :goto_3
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "importNoteToCoeditInternal, exception : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "importNoteToCoeditInternal, failed : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->uploadFailedCount:I

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->copyFailedCount:I

    return-object v3

    :goto_5
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v11, v3}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    throw v0
.end method

.method private isValidUploadEntry(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "InternalImportHandler"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[5-2] isValidUploadEntry, spaceId not exist "

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getUuid()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[5-2] isValidUploadEntry, old uuid "

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[5-2] isValidUploadEntry, stop, file does not exist, path : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private processFailedImportItem(Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/t;Landroid/content/Context;)V
    .locals 0
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/notes/sync/db/t;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->releaseFailedImportItem(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/t;Landroid/content/Context;)V

    return-void
.end method

.method private releaseFailedImportItem(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/t;Landroid/content/Context;)V
    .locals 1
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LocalCoedit FailedImportItem"

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/notes/sync/db/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->removeCoeditCache(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private uploadSpenWNote(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;)I
    .locals 4

    const-string v0, "uploadSpenWNote, ret : "

    const-string v1, "InternalImportHandler"

    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->connectServiceToUploadNote(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadSpenWNote, fail to upload wNote, e : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_2
    return v2

    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public connectServiceToUploadNote(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;)I
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "InternalImportHandler"

    const-string v1, "connectServiceToUploadNote, CoeditService"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;->getEntry()Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getUuid()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->UpDownloader:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_up_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    invoke-direct {v10, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "document_uuid"

    invoke-virtual {v10, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v11, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;

    move-object v2, v11

    move-object v3, p0

    move-object v4, v9

    move-object v5, v1

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, v10, v11, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "connectServiceToUploadNote, fail to bind!"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->getSnapError()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    const/16 p2, 0xca

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-wide/32 v2, 0x927c0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v11, v9}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->unsubscribe(Ljava/lang/String;)V

    invoke-static {p1, v11}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    move-object p2, v1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v1, "connectServiceToUploadNote, TimeoutException"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v0

    const-string v1, "connectServiceToUploadNote-Timeout"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->forceCancel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v11, v9}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->unsubscribe(Ljava/lang/String;)V

    invoke-static {p1, v11}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :goto_1
    invoke-virtual {v11, v9}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->unsubscribe(Ljava/lang/String;)V

    invoke-static {p1, v11}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    throw p2
.end method

.method public importNoteToCoedit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->importNoteToCoeditInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->generateImportResult(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    move-result-object p1

    return-object p1
.end method

.method public importNoteToCoedit(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lj/a;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lj/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lj/a;",
            ")",
            "Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->importNoteToCoeditInternal(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lj/a;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->generateImportResult(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    move-result-object p1

    return-object p1
.end method
