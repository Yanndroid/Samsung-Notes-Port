.class public Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;
.super Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PdfCollectTask"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;->TAG:Ljava/lang/String;

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

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;->PDF:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->createDocument()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;->TAG:Ljava/lang/String;

    const-string v1, "run, failed"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->progressFail()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectStateListener:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->getLastModifiedAt()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getTaskType()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;->onCollectStarted(Ljava/lang/String;JLcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;Z)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCanceled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;->TAG:Ljava/lang/String;

    const-string v1, "run, canceled"

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/DummyCollector;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectStateListener:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/DummyCollector;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollector:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->PDF_SEARCH:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v0

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/CollectorClassConverter;->convertToClass(I)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollector:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectStateListener:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;->linkWith(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;)Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollector:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/collector/repository/CollectRepository;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/model/collector/repository/CollectRepository;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;->collect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/PdfCollectTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run, exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
