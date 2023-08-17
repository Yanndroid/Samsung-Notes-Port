.class public Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;
.super Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NoteCollectTask"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;->NOTE:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;)I
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->getCollectParam()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getPriority()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getPriority()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;->compareTo(Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;->compareTo(Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 9

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/ExceptionFileManager;->isExistInExceptList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0, v7}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/ExceptionFileManager;->addFileInWorkingList(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->createDocument()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;->TAG:Ljava/lang/String;

    const-string v1, "run, failed, not valid"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->progressFail()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectStateListener:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->getLastModifiedAt()J

    move-result-wide v3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getTaskType()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;

    move-result-object v5

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getInReadyState()Z

    move-result v6

    move-object v2, v7

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;->onCollectStarted(Ljava/lang/String;JLcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCanceled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;->TAG:Ljava/lang/String;

    const-string v2, "run, canceled"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/ExceptionFileManager;->removeFileInWorkingList(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/DummyCollector;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectStateListener:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/DummyCollector;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollector:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->TEXT_SEARCH:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollector:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;

    :goto_1
    sget-object v3, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->ALL:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v3

    if-gt v1, v3, :cond_3

    sget-object v3, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->PDF_SEARCH:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v3

    if-eq v1, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getLinkWith()I

    move-result v3

    and-int/2addr v3, v1

    if-ne v1, v3, :cond_2

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/CollectorClassConverter;->convertToClass(I)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;

    const/4 v8, 0x0

    aput-object v6, v5, v8

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectStateListener:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;

    invoke-interface {v2, v3}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;->linkWith(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;)Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;

    move-result-object v2

    :cond_2
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollector:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    new-instance v3, Lcom/samsung/android/support/senl/nt/model/collector/repository/CollectRepository;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/model/collector/repository/CollectRepository;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;->collect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-static {v0, v7}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/ExceptionFileManager;->removeFileInWorkingList(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run, exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->progressFail()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    invoke-static {v0, v7}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/ExceptionFileManager;->removeFileInWorkingList(Landroid/content/Context;Ljava/lang/String;)V

    throw v1

    :cond_4
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/NoteCollectTask;->TAG:Ljava/lang/String;

    const-string v1, "run, failed, exist in ExceptList"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->progressFail()V

    :goto_4
    return-void
.end method
