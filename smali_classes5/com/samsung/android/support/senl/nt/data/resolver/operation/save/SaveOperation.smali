.class public abstract Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;
.super Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation$Strategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Entity:",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
        "SpenDocument:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentOperation<",
        "TEntity;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsNew:Z

.field private mLockAccountGuid:Ljava/lang/String;

.field private final mSaveStrategy:Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

.field private mSpenDocument:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSpenDocument;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SaveOperation"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentOperation;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    const v0, 0x10808

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->mSaveStrategy:Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    return-void
.end method

.method private printDatabaseStrategy(Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " strategy : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    const/16 v1, 0x2c

    if-eqz p1, :cond_0

    const-string p1, "BROADCAST_RELOAD_AFTER_SAVE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CLOSE_AFTER_SAVE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "CREATE_AUTO_TITLE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "SHOW_SAVE_SUCCESS_MESSAGE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "SHOW_DELETE_EMPTY_DOCUMENT_MESSAGE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const/16 p1, 0x40

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "DO_NOT_DELETE_SERVICE_CACHE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const/16 p1, 0x80

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "FORCE_SAVE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    const/16 p1, 0x400

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "DO_NOT_UPDATE_DATABASE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    const/16 p1, 0x800

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "CREATE_THUMBNAIL_CACHE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    const/16 p1, 0x1000

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "DO_NOT_UPDATE_MAPPING_TABLE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    const/16 p1, 0x2000

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "BROADCAST_FORCE_UPDATE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    const/high16 p1, 0x10000

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "SEND_ANALYTICS"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    const/high16 p1, 0x20000

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "REMOVE_HANDWRITING_SEARCH_DATA"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    const/high16 p1, 0x40000

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "DO_NOT_COLLECT_SEARCH_DATA"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    const/high16 p1, 0x80000

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "UPDATE_DATABASE_AFTER_FILE_SAVE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "printDatabaseStrategy - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntity;)Z"
        }
    .end annotation

    const-string v0, "save database operation - end"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->getSpenDocument()Ljava/lang/Object;

    move-result-object v2

    if-eqz p1, :cond_1

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v3, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply, document : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply, entity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "save database operation - start"

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SaveOperation"

    new-instance v4, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->getSaveStrategy()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;-><init>(I)V

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->printDatabaseStrategy(Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;)V

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->setDocumentTitleEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->setDocumentPageEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->setDocumentBackgroundEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->setDocumentContentEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->setDocumentTimeEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->setLockAccountGuidEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->saveToDatabase(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentOperation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->encryptContents(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply, end -> failed to encryptContents - e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTimeSaveParam()Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->setTime(Ljava/lang/Long;Ljava/lang/Long;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentOperation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->isNew()Z

    move-result v5

    invoke-direct {v2, v4, v5, p1, v3}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;-><init>(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/util/List;)V

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;->setStrategy(I)Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler;->callable(Ljava/lang/Runnable;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->executeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->execute()V

    sget-object v2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply, end - insert to database. entity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_1
    :goto_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_3
    sget-object v2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply, e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :goto_2
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public checkSaveStrategy(I)Z
    .locals 1
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/SaveStrategy;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->mSaveStrategy:Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->check(I)Z

    move-result p1

    return p1
.end method

.method public getLockAccountGuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->mLockAccountGuid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSaveStrategy()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->mSaveStrategy:Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->get()I

    move-result v0

    return v0
.end method

.method public getSpenDocument()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSpenDocument;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->mSpenDocument:Ljava/lang/Object;

    return-object v0
.end method

.method public isNew()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->mIsNew:Z

    return v0
.end method

.method public abstract saveToDatabase(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSpenDocument;TEntity;)V"
        }
    .end annotation
.end method

.method public abstract setDocumentBackgroundEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSpenDocument;TEntity;)V"
        }
    .end annotation
.end method

.method public abstract setDocumentContentEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSpenDocument;TEntity;)V"
        }
    .end annotation
.end method

.method public abstract setDocumentPageEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSpenDocument;TEntity;)V"
        }
    .end annotation
.end method

.method public abstract setDocumentTimeEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSpenDocument;TEntity;)V"
        }
    .end annotation
.end method

.method public abstract setDocumentTitleEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSpenDocument;TEntity;)V"
        }
    .end annotation
.end method

.method public setLockAccountGuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation<",
            "TEntity;TSpenDocument;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->mLockAccountGuid:Ljava/lang/String;

    return-object p0
.end method

.method public abstract setLockAccountGuidEntity(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSpenDocument;TEntity;)V"
        }
    .end annotation
.end method

.method public setNew(Z)Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation<",
            "TEntity;TSpenDocument;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->mIsNew:Z

    return-object p0
.end method

.method public setSaveStrategy(I)Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;
    .locals 1
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/SaveStrategy;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation<",
            "TEntity;TSpenDocument;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->mSaveStrategy:Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;->set(I)V

    return-object p0
.end method

.method public setSpenDocument(Ljava/lang/Object;)Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSpenDocument;)",
            "Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation<",
            "TEntity;TSpenDocument;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/SaveOperation;->mSpenDocument:Ljava/lang/Object;

    return-object p0
.end method
