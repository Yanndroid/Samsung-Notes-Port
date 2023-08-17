.class public Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RevisionOperationExecutor"


# instance fields
.field private final mPreference:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

.field private final mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x32

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "RevisionOperationExecutor"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    const-string v0, "APP_UPDATE_PREFERENCE"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->mPreference:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->lambda$recognizeSDocs$2()V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->lambda$convertCategoryColor$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->lambda$deleteDummyData$4(Landroid/content/Context;)V

    return-void
.end method

.method private checkSdocXInOldFolder(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/updater/c;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/app/updater/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private convertCategoryColor(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->mPreference:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    const-string v1, "KEY_CATEGORY_COLOR_CONVERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertCategoryColor, count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RevisionOperationExecutor"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->mPreference:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/updater/a;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/app/updater/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->lambda$checkSdocXInOldFolder$3(Landroid/content/Context;)V

    return-void
.end method

.method private deleteDummyData(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/updater/b;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/app/updater/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->lambda$restoreCorruptData$0()V

    return-void
.end method

.method public static synthetic f(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->lambda$removeSesSkipItems$5(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$checkSdocXInOldFolder$3(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    const-string v1, "RESTORE_TASK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;->execute()Z

    move-result p0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestSyncBackground()Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$convertCategoryColor$1(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConvertTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConvertTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConvertTask;->execute()V

    return-void
.end method

.method private static synthetic lambda$deleteDummyData$4(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesDocumentPageRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;->deleteDummy()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createPageSearchInfoRepository()Lcom/samsung/android/support/senl/nt/data/repository/search/NotesPageSearchInfoRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesPageSearchInfoRepository;->deleteDummy()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentStrokeRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->deleteDummy()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentRetryRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;->deleteDummy()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->deleteDummy()V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->deleteDummy()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->getWidgetBroadcaster()Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;->sendDeleteDummyWidgetBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$recognizeSDocs$2()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/updater/SDocSearchDataUpdater;->execute()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->UPDATE_NOTE_DOC_OBJECT_RECOGNITION:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setActionType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->postCollectorTask(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    return-void
.end method

.method private static synthetic lambda$removeSesSkipItems$5(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lv/h;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$restoreCorruptData$0()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreCorruptDataManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreCorruptDataManager;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/RestoreCorruptDataManager;->execute()V

    return-void
.end method

.method private recognizeSDocs(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker;->getCurrentVersionCode()I

    move-result v0

    const v1, 0x1874b630

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->mPreference:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    const/4 v1, 0x0

    const-string v2, "KEY_RECOGNIZE_SDOC"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recognizeSDocs, version : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RevisionOperationExecutor"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->isSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/updater/e;->a:Lcom/samsung/android/support/senl/nt/app/updater/e;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler;->callable(Ljava/lang/Runnable;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->executeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->execute()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->mPreference:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private removeSesSkipItems(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/updater/d;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/app/updater/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private restoreCorruptData()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/updater/f;->a:Lcom/samsung/android/support/senl/nt/app/updater/f;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->restoreCorruptData()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->convertCategoryColor(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->recognizeSDocs(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->checkSdocXInOldFolder(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->deleteDummyData(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/RevisionOperationExecutor;->removeSesSkipItems(Landroid/content/Context;)V

    return-void
.end method
