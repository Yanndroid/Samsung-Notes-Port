.class public Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sDeleteExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesDocumentDeleteUtils"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->lambda$deleteDocumentFile$1(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->lambda$deleteDocumentFile$0(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;)V

    return-void
.end method

.method public static deleteDocumentFile(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->getContentUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->getStrokeUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->deleteDocumentFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static deleteDocumentFile(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;",
            ">;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/utils/b;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/common/utils/b;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;

    new-instance v3, Lcom/samsung/android/support/senl/nt/data/common/utils/a;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/support/senl/nt/data/common/utils/a;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;)V

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static deleteDocumentFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDocumentByPath, filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callee: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/common/utils/DocFileThreadSafe;->getSynchronizedObjectByFilePath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "deleteDocumentByPath, start"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->removeClosedCache(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/PageCacheUtils;->getRootCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->removeCoeditCache(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-static {p0, p2}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->deleteOriginalSpenDocument(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v1

    const/4 p1, 0x1

    aput-object p3, v3, p1

    const/4 p3, 0x2

    aput-object p4, v3, p3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileExtensions;->deletePrivateFiles(Landroid/content/Context;Ljava/util/List;)J

    const-string p0, "deleteDocumentByPath, end"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/common/utils/DocFileThreadSafe;->removeSynchronizedObject(Ljava/lang/String;)V

    return p1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    :try_start_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "deleteDocumentFile, e : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/common/utils/DocFileThreadSafe;->removeSynchronizedObject(Ljava/lang/String;)V

    return v1

    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/common/utils/DocFileThreadSafe;->removeSynchronizedObject(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    return v1
.end method

.method private static deleteOriginalSpenDocument(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDocumentByPath, filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/WDocUtils;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->extractFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils$1;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length p1, p0

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 4
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->sDeleteExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    const/4 v1, 0x5

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v3, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->sDeleteExecutor:Ljava/util/concurrent/Executor;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->sDeleteExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static synthetic lambda$deleteDocumentFile$0(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->deleteDocumentFile(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;)V

    return-void
.end method

.method private static synthetic lambda$deleteDocumentFile$1(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->deleteDocumentFile(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;)V

    return-void
.end method
