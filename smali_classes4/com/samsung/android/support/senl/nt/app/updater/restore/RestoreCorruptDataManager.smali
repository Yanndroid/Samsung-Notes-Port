.class public Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreCorruptDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CORRUPTED_RESTORE_KEY:Ljava/lang/String; = "restore_corruption_count"

.field private static final CORRUPTED_RESTORE_PROF_V1:Ljava/lang/String; = "restore_corruption_prof_v1"

.field private static final RESTORE_REPEAT_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RestoreCorruptDataManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private restore()V
    .locals 7

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesRestoreRepository()Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;->getCorruptNotes()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute, corruptNotes count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RestoreCorruptDataManager"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "restoreCorruptData#, /// "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ".sdocx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreCorruptDataManager;->restoreEntity(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;->update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    goto :goto_0

    :cond_2
    :goto_1
    const-string v5, "Invalid : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private restoreEntity(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/lang/String;)V
    .locals 4

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->getLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->convertSdkTimeToAppTime(J)J

    move-result-wide v0

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->getCreatedTime(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->convertSdkTimeToAppTime(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCreatedAt(J)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLastModifiedAt(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLastMappedAt(J)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setServerTimestamp(Ljava/lang/Long;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setCategoryServerTimeStamp(Ljava/lang/Long;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setCategoryIsDirty(I)V

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setRecycleBinTimeMoved(J)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsFavorite(I)V

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->isLocked(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x5

    :cond_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsLock(I)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    const-string v0, "restore_corruption_prof_v1"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "restore_corruption_count"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore, current repeat count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RestoreCorruptDataManager"

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v2, :cond_0

    const-string v0, "restore, count invalid"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreCorruptDataManager;->restore()V

    return-void
.end method
