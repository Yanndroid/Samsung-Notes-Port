.class public abstract Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/common/CollectThreadPoolExecutor$CollectTask;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mCanceled:Z

.field public final mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

.field public final mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

.field public final mCollectStateListener:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;

.field public mCollector:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AbsCollectTask"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectStateListener:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;

    new-instance p3, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->TAG:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCanceled:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollector:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;->cancel()Z

    :cond_0
    return-void
.end method

.method public getCollectParam()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    return-object v0
.end method

.method public getLastModifiedAt()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getLastModifiedAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getNotePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getTriggerType()I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public progressFail()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->TAG:Ljava/lang/String;

    const-string v1, "progressFail"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollector:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/collector/repository/CollectRepository;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/model/collector/repository/CollectRepository;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;->fail(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectStateListener:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getTaskType()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;->onCollectFailed(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;)V

    return-void
.end method
