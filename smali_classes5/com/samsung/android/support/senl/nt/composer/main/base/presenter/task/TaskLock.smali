.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskLock"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;-><init>()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;->updateSpenWNoteAndEntity(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;ZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private updateSpenWNoteAndEntity(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;ZLjava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isChangedOnlyThumbnail()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p1, p4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setOwnerId(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->LOCKED_WDOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    :goto_1
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setDocumentType(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;)V

    goto :goto_2

    :cond_1
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setOwnerId(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->UNLOCKED_DOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSpenWNote e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->clearChangedFlag()V

    :cond_2
    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->updateLockEntity(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
