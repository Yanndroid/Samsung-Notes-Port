.class public Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;
.super Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask<",
        "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImportWdocTask"


# instance fields
.field private final mDeleteType:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;-><init>(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;I)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;I)V
    .locals 0
    .param p2    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;-><init>(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;)V

    iput p2, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;->mDeleteType:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;ILjava/lang/String;)V
    .locals 0
    .param p2    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;-><init>(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;)V

    iput p2, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;->mDeleteType:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;->mTitle:Ljava/lang/String;

    return-void
.end method

.method private updateDocumentTimeEntity(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTimeSaveParam()Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    move-result-object p1

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->getDisplayCreatedTime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->convertSdkTimeToAppTime(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->getDisplayModifiedTime(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->convertSdkTimeToAppTime(J)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTimeSaveParam()Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->setTime(Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public close(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close, document : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImportWdocTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->getExternalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->disuse(Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close, e : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->getExternalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->disuse(Ljava/lang/String;)V

    return p1

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->getExternalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->disuse(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic close(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;->close(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result p1

    return p1
.end method

.method public createDocumentEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
    .locals 1
    .param p1    # Ljava/lang/String;
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
    .param p5    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFilePath(Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;->mDeleteType:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsDeleted(I)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p5}, Lcom/samsung/android/support/senl/cm/base/common/util/LockFileUtils;->getLockTypeFromSdocx(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsLock(I)V

    invoke-virtual {p5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setPageMode(I)V

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;->updateDocumentTimeEntity(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;->mTitle:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setTitle(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic createDocumentEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
    .locals 0
    .param p1    # Ljava/lang/String;
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
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p5, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;->createDocumentEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    return-object p1
.end method

.method public getDocumentExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".sdocx"

    return-object v0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", externalPath : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isCoeditNote: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->isCoeditNote()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImportWdocTask"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/utils/SpenDocumentDisplayUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object v0

    const/16 v1, 0x1770

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->use(ILjava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->isCoeditNote()Z

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->isCoeditNote()Z

    move-result v8

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V

    return-object p1
.end method

.method public bridge synthetic open(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;->open(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    return-object p1
.end method

.method public saveSpenDocument(Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveSpenDocument, savePath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", document : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImportWdocTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->saveAsDirectory(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveSpenDocument, e : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic saveSpenDocument(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;->saveSpenDocument(Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result p1

    return p1
.end method

.method public saveToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/lang/String;)Z
    .locals 9
    .param p1    # Ljava/lang/String;
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
    .param p4    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->saveToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", savePath : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", externalPath : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", document : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ImportWdocTask"

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLockAccountGuid()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    const/4 v6, 0x1

    const/16 v7, 0x800

    move-object v2, p2

    move-object v3, p5

    move-object v4, p4

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->save(Landroid/content/Context;ZLjava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;ZILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic saveToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
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
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p4, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;->saveToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateSpenDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setServerCheckPoint(J)V

    return-void
.end method

.method public bridge synthetic updateSpenDocument(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;->updateSpenDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method
