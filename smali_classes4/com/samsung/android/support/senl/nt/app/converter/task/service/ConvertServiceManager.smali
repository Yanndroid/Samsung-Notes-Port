.class public Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture;,
        Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertThreadPoolExecutor;,
        Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;,
        Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertRunner;,
        Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$OpenRunner;,
        Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;,
        Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$CancelListener;,
        Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$CloseListener;,
        Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$SaveListener;,
        Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$OpenListener;,
        Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;
    }
.end annotation


# static fields
.field private static final SDOCX_CONVERT_SERVICE_JOB_MAX_CAPACITY:I = 0x2

.field private static final SDOCX_CONVERT_SERVICE_JOB_MIN_CAPACITY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ConvertServiceManager"


# instance fields
.field private final SDOCX_CONVERT_SERVICE_JOB_CAPACITY:I

.field private mAppContext:Landroid/content/Context;

.field private mConnection:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;

.field private mConvertThreadPool:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertThreadPoolExecutor;

.field private final mConverterLock:Ljava/lang/Object;

.field private mCountRunningSave:I

.field private final mItemQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemQueueLock:Ljava/lang/Object;

.field private mPageHeight:I

.field private mPageWidth:I

.field private final mRunningJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mRunningJobsLock:Ljava/lang/Object;

.field private mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

.field private final mServiceLock:Ljava/lang/Object;

.field private mSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

.field private final mThreadPoolLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mItemQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mRunningJobs:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mServiceLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConverterLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mItemQueueLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mRunningJobsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mThreadPoolLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mCountRunningSave:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mAppContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->getDeviceMemoryLevel()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    move v3, p1

    :goto_0
    iput v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->SDOCX_CONVERT_SERVICE_JOB_CAPACITY:I

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, p1

    move v2, v3

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConvertThreadPool:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertThreadPoolExecutor;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/a;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConnection:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mAppContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mAppContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConnection:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mCountRunningSave:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mPageWidth:I

    return p0
.end method

.method private cancelItemQueue(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mItemQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getCallerId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getListener()Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    move-result-object v2

    const/4 v3, 0x3

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;->onSuccess(ILcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private convert(Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mPageWidth:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageDefaultWidth(I)V

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mPageHeight:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageDefaultHeight(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConverterLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getConverter()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;-><init>(Landroid/content/Context;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mAppContext:Landroid/content/Context;

    invoke-interface {p1, v3, v1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;->convert(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;->release()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private createSDocXRepository(Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;",
            ")",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getDstUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v2, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getDstFilePrefix()Ljava/lang/String;

    move-result-object p1

    const-string v3, ".sdocx"

    invoke-static {v1, p1, v3}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentFileUtils;->createSavePathWithPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    const-string v5, ""

    const-string v6, "ConvertServiceManager"

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->createWordDocRepository()Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-result-object p1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->isIndividualPage()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->setPageMode(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mPageWidth:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->setPageWidth(I)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-result-object p1

    const v0, 0x48800

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mServiceLock:Ljava/lang/Object;

    return-object p0
.end method

.method private execute()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    if-nez v1, :cond_0

    const-string v1, "ConvertServiceManager"

    const-string v2, "execute, service is null"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->SDOCX_CONVERT_SERVICE_JOB_CAPACITY:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->produceOpenJob()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mCountRunningSave:I

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mPageHeight:I

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mPageWidth:I

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->convert(Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->createSDocXRepository(Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->execute()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->produceOpenJob()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ILjava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->requestClose(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ILjava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;)V

    return-void
.end method

.method private produceOpenJob()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mThreadPoolLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConvertThreadPool:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertThreadPoolExecutor;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->SDOCX_CONVERT_SERVICE_JOB_CAPACITY:I

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mItemQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mItemQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$OpenRunner;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$OpenRunner;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->submit(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static bridge synthetic q(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->submit(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;)V

    return-void
.end method

.method private requestClose(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ILjava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$CloseListener;

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-direct {v4, p3, p4}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;)V

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$CloseListener;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V

    :goto_0
    invoke-interface {v1, p1, v3}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$CancelListener;

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-direct {v4, p3, p4}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;)V

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$CancelListener;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V

    goto :goto_0

    :goto_1
    const-string p1, "ConvertServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestClose#, count of running save : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mCountRunningSave:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mCountRunningSave:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;

    invoke-direct {p1, p3}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p2, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;->onFailed(ILcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private submit(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;)V
    .locals 5

    const-string v0, "ConvertServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->a(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mRunningJobsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mRunningJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture;

    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mRunningJobs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mThreadPoolLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConvertThreadPool:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertThreadPoolExecutor;

    if-nez v2, :cond_2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_2
    :try_start_3
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-string v2, "ConvertServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " submit : queue size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConvertThreadPool:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    instance-of v1, p1, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mRunningJobs:Ljava/util/List;

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method


# virtual methods
.method public cancel(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mItemQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->cancelItemQueue(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mRunningJobsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mRunningJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture;->cancel(I)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public cancelAll()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mItemQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mItemQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getListener()Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    move-result-object v3

    const/4 v4, 0x3

    new-instance v5, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;->onSuccess(ILcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mItemQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mRunningJobsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mRunningJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture;->cancel()V

    goto :goto_1

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public convertDocument(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Ljava/util/List;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mItemQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mItemQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-direct {v3, v0, p3, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->execute()V

    return-void
.end method

.method public disconnect()V
    .locals 6

    const-string v0, "ConvertServiceManager"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mItemQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mItemQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mRunningJobsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mRunningJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture;->cancel()V

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mThreadPoolLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConvertThreadPool:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertThreadPoolExecutor;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConvertThreadPool:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertThreadPoolExecutor;

    const-wide/16 v3, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConvertThreadPool:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    :try_start_4
    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConvertThreadPool:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertThreadPoolExecutor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_5
    const-string v3, "ConvertServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnect : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConvertThreadPool:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :goto_2
    :try_start_6
    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConvertThreadPool:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$ConvertThreadPoolExecutor;

    throw v1

    :cond_3
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->unsubscribe()V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    :cond_4
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mRunningJobsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mRunningJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConnection:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mAppContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->mConnection:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->resetConvertingSize()V

    return-void

    :catchall_1
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1

    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    :catchall_5
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v1
.end method
