.class public abstract Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCanceled:Z

.field private final mCollectStateListener:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;

.field private mNext:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AbsCollector"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->mCollectStateListener:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->mCanceled:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->cancelNext()Z

    move-result v0

    return v0
.end method

.method public cancelNext()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->mNext:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;->cancel()Z

    move-result v0

    return v0
.end method

.method public collect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public collectNext(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->mNext:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->mCollectStateListener:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getTaskType()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->hasPdf()Z

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;->onCollectFinished(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;Z)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->release()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;->collect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z

    move-result p1

    return p1
.end method

.method public fail(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->failNext(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z

    move-result p1

    return p1
.end method

.method public failNext(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->mNext:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;->fail(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z

    move-result p1

    return p1
.end method

.method public isAvailable(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Z
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMemoryForNewMemo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailable, not available memory for new note: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->getAvailableInternalMemorySize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getNotePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->getAvailableInternalMemorySize()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-gtz p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailable, not available uncompressedSize: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailable, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->mCanceled:Z

    return v0
.end method

.method public isSupported()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isPowerManageMode(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public linkWith(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;)Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->mNext:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollector;

    return-object p1
.end method

.method public postCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    .locals 0

    return-void
.end method

.method public preCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    .locals 0

    return-void
.end method
