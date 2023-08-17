.class public Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;
.super Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
        "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WDocSaveOperation"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;-><init>(Landroid/content/Context;)V

    const p1, 0x10808

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->setSaveStrategy(I)Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;

    return-void
.end method

.method private updateMaxObjectLimit(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCorrupted()I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->getWeightAllObjectForSync(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)I

    move-result p1

    const v1, 0x186a0

    if-le p1, v1, :cond_0

    or-int/lit8 p1, v0, 0x2

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x3

    :goto_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCorrupted(I)V

    return-void
.end method


# virtual methods
.method public saveToDatabase(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 5
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;->updateMaxObjectLimit(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDirtySkipped()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsDirty(I)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setCategoryIsDirty(I)V

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply, entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "save database transaction - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save database transaction - DO_NOT_UPDATE_MAPPING_TABLE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1000

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->checkSaveStrategy(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isNew : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->isNew()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->checkSaveStrategy(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentOperation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMappedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->isNew()Z

    move-result v3

    const-string v4, ".sdocx"

    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;->setConverted(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentOperation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getServerCheckPoint()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->onCoeditDocumentSaved(Ljava/lang/String;J)V

    :cond_2
    const/16 p1, 0x2000

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->checkSaveStrategy(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentOperation;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->sendForceUpdateBroadcast(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    :cond_3
    const-string p1, "save database transaction - end"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic saveToDatabase(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;->saveToDatabase(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method

.method public setDocumentBackgroundEntity(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 4
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundColor()I

    move-result v1

    :goto_0
    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isBackgroundColorInverted()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setBackgroundColorInverted(I)V

    sget-object p2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDocumentBackgroundEntity, pageCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", color : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isBackgroundColorInverted : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isBackgroundColorInverted()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDocumentBackgroundEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;->setDocumentBackgroundEntity(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method

.method public setDocumentContentEntity(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 4
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->checkSaveStrategy(I)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDocumentContentEntity, CREATE_THUMBNAIL_CACHE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentOperation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->saveThumbnail(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setContentSecureVersion(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentOperation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentContentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->checkSaveStrategy(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;->enableAnalytics(Z)Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;->insert(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Z)V

    return-void
.end method

.method public bridge synthetic setDocumentContentEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;->setDocumentContentEntity(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method

.method public setDocumentPageEntity(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setPageMode(I)V

    return-void
.end method

.method public bridge synthetic setDocumentPageEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;->setDocumentPageEntity(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method

.method public setDocumentTimeEntity(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 8
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getKeepServerTimestamp()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentOperation;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setServerTimestamp(Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getServerTimestamp()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setCategoryServerTimeStamp(Ljava/lang/Long;)V

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTimeSaveParam()Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDocumentTimeEntity, timeSaveParam : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->isNew()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->getDisplayCreatedTime(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->convertSdkTimeToAppTime(J)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v0

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->getCreatedTime(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCreatedAt(J)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->getLastModifiedTime(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLastModifiedAt(J)V

    :cond_2
    const/16 v3, 0x4000

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->checkSaveStrategy(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->getLastModifiedTime(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLastModifiedAt(J)V

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->getLastModifiedTime(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLastModifiedAt(J)V

    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v0

    cmp-long p1, v0, v6

    if-nez p1, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCreatedAt(J)V

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDocumentTimeEntity, isNew : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->isNew()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", created : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", modified : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", doNotUpdateModifiedTime : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDocumentTimeEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;->setDocumentTimeEntity(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method

.method public setDocumentTitleEntity(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 4
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getTitle()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->trimMaxContentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getTitle()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getHintText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getTitle()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->convertDisplayData(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setDisplayTitle([B)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/DocumentTitleCreator;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/DocumentTitleCreator;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentOperation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/DocumentTitleCreator;->create(Landroid/content/res/Resources;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setRecommendedTitle(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDocumentTitleEntity, title : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hintText : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recommendedTitle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getRecommendedTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDocumentTitleEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;->setDocumentTitleEntity(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method

.method public setLockAccountGuidEntity(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockAccountGuid, accountGuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->getLockAccountGuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lockType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->getLockAccountGuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setOwnerId(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLockAccountGuid(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setLockAccountGuidEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/WDocSaveOperation;->setLockAccountGuidEntity(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method
