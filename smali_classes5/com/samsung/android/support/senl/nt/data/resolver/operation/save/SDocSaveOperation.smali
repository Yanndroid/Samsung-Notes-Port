.class public Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SDocSaveOperation;
.super Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
        "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SDocSaveOperation"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SDocSaveOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x808

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->setSaveStrategy(I)Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;

    return-void
.end method


# virtual methods
.method public saveToDatabase(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->isNew()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDirtySkipped()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsDirty(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentOperation;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

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

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SDocSaveOperation;->saveToDatabase(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method

.method public setDocumentBackgroundEntity(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SDocSaveOperation;->setDocumentBackgroundEntity(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method

.method public setDocumentContentEntity(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 6
    .param p1    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentOperation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->removeContents(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setContentSecureVersion(I)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v2

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->checkSaveStrategy(I)Z

    move-result v5

    const/4 v4, 0x0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->updateContents(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/lang/String;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;ZZ)V

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

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SDocSaveOperation;->setDocumentContentEntity(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method

.method public setDocumentPageEntity(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

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

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SDocSaveOperation;->setDocumentPageEntity(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method

.method public setDocumentTimeEntity(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 7
    .param p1    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
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

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTimeSaveParam()Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SDocSaveOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDocumentTimeEntity, timeSaveParam : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->isNew()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->getCreatedTime(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    :goto_0
    sget-object v3, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SDocSaveOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDocumentTimeEntity, e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-wide v2, v0

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->getCreatedTime(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCreatedAt(J)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->getLastModifiedTime(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLastModifiedAt(J)V

    :cond_2
    const/16 v2, 0x4000

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->checkSaveStrategy(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->getLastModifiedTime(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLastModifiedAt(J)V

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

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

    cmp-long p1, v0, v5

    if-nez p1, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCreatedAt(J)V

    :cond_5
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SDocSaveOperation;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDocumentTimeEntity, isNew : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->isNew()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", created : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", modified : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", doNotUpdateModifiedTime : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SDocSaveOperation;->setDocumentTimeEntity(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method

.method public setDocumentTitleEntity(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getTitle()Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getTitle()Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->convertDisplayData(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setDisplayTitle([B)V

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

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SDocSaveOperation;->setDocumentTitleEntity(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method

.method public setLockAccountGuidEntity(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SDocSaveOperation;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLockAccountGuid, accountGuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->getLockAccountGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lockType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isUnLockedDocType(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->getLockAccountGuid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLockAccountGuid(Ljava/lang/String;)V

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

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SDocSaveOperation;->setLockAccountGuidEntity(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method
