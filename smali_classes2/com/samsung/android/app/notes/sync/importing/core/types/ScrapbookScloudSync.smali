.class public Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;
.super Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$d;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrapbookScloudSync"

.field private static mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public futures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mAuthorization:Ljava/lang/String;

.field private mCategoryItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$d;",
            ">;"
        }
    .end annotation
.end field

.field private mScrapbookServiceHelper:La2/f;

.field private mUseConcurrentRequest:Z

.field public threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v7, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v0, "ScrapbookScloudSync"

    invoke-direct {v7, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    const/16 v2, 0x3e8

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SCRAPBOOK_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-direct {p0, p1, p3, v0, p4}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mCategoryItems:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mUseConcurrentRequest:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->futures:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mAuthorization:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;",
            "I",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SCRAPBOOK_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-direct {p0, p1, p3, v0, p4}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mCategoryItems:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mUseConcurrentRequest:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->futures:Ljava/util/List;

    iput-object p5, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mAuthorization:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mAuthorization:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private downloadContentFiles(Ljava/lang/String;)Z
    .locals 10

    const-string v0, "ScrapbookScloudSync"

    const-string v1, "downloadContentFiles()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$a;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$a;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    move v1, v7

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/d;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v4, v5, v1, v0, v2}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onUpdated(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILd1/d;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const-string v1, "ScrapbookScloudSync"

    const-string v2, "getImportItems : Download attached files"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    :goto_1
    if-ge v8, v0, :cond_2

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ld1/d;

    new-instance v9, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$b;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move v5, v8

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$b;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;Ld1/d;Ljava/lang/String;II)V

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mUseConcurrentRequest:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->futures:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mUseConcurrentRequest:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->futures:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v0, v7

    :goto_3
    if-ge v0, p1, :cond_5

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->futures:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const/16 v2, 0x13b

    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    invoke-interface {v1, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    const-string v0, "ScrapbookScloudSync"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ScrapbookScloudSync"

    const-string v1, "Handle the RuntimeException as SyncException!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    const-string v0, "ScrapbookScloudSync"

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "ExecutionException"

    goto :goto_4

    :cond_3
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ScrapbookScloudSync"

    const-string v1, "Handle the ExecutionException as SyncException!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_2
    move-exception v1

    const-string v2, "ScrapbookScloudSync"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v1, "InterruptedException"

    goto :goto_5

    :cond_4
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->futures:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_6
    const-string p1, "ScrapbookScloudSync"

    const-string v0, "downloadContentFiles() finishes"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private downloadContentInfo()Z
    .locals 31

    move-object/from16 v1, p0

    const-string v2, "server_file_path"

    const-string v3, "meta_key"

    const-string v4, "metaObjs"

    const-string v5, "crop_image_path"

    const-string v6, "crop_time"

    const-string v7, "category_id"

    const-string/jumbo v8, "type"

    const-string v9, "JSONException - "

    const-string v10, "ScrapbookScloudSync"

    const-string v0, "downloadContentInfo()"

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mScrapbookServiceHelper:La2/f;

    invoke-virtual {v0}, La2/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x1

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_f

    :try_start_1
    const-string v14, "key"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    const-string v11, "_content_"

    invoke-virtual {v15, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12

    const-wide/16 v16, 0x0

    const-string/jumbo v11, "value"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_e

    move-object/from16 v18, v12

    :try_start_2
    const-string v12, "Content "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " : key = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " , Value =  "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_c

    add-int/lit8 v13, v13, 0x1

    :try_start_3
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_b

    if-eqz v0, :cond_1

    :try_start_4
    const-string/jumbo v0, "video"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Do not support video type. Skip!!"

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_c

    move-object/from16 v12, v18

    goto :goto_1

    :cond_1
    :try_start_5
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_b

    const-string v12, ""

    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_c

    goto :goto_2

    :cond_2
    move-object v0, v12

    :goto_2
    :try_start_7
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_b

    if-eqz v14, :cond_3

    :try_start_8
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_c

    :cond_3
    move-wide/from16 v23, v16

    :try_start_9
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_b

    if-eqz v14, :cond_4

    :try_start_a
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_c

    move-object/from16 v25, v14

    goto :goto_3

    :cond_4
    move-object/from16 v25, v12

    :goto_3
    :try_start_b
    iget-object v14, v1, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mCategoryItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    const/16 v16, 0x0

    if-eqz v15, :cond_6

    :try_start_c
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$d;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1

    move-object/from16 v17, v5

    :try_start_d
    iget-object v5, v15, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$d;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v0, v15, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$d;->b:Ljava/lang/String;

    iget v5, v15, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$d;->c:I
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0

    move v14, v5

    move-object v5, v0

    goto :goto_6

    :cond_5
    move-object/from16 v5, v17

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v17, v5

    :goto_5
    move-object/from16 v29, v3

    goto/16 :goto_14

    :cond_6
    move-object/from16 v17, v5

    move-object v5, v12

    move/from16 v14, v16

    :goto_6
    :try_start_e
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v15
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_9

    move-object/from16 v26, v6

    :try_start_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_8

    move-object/from16 v27, v7

    :try_start_10
    const-string v7, "getImportItems : size of metaObjs = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_7

    move-object v6, v12

    move/from16 v7, v16

    :goto_7
    if-ge v7, v15, :cond_11

    move-object/from16 v19, v6

    :try_start_11
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_6

    if-eqz v20, :cond_10

    move-object/from16 v28, v8

    :try_start_12
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v20
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_5

    if-eqz v20, :cond_7

    goto/16 :goto_c

    :cond_7
    const/16 v20, -0x1

    move-object/from16 v29, v3

    :try_start_13
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v3
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_4

    move-object/from16 v21, v12

    const v12, 0x6942258

    move/from16 v30, v13

    const/4 v13, 0x2

    if-eq v3, v12, :cond_a

    const v12, 0x1439892e

    if-eq v3, v12, :cond_9

    const v12, 0x3ce6b282

    if-eq v3, v12, :cond_8

    goto :goto_8

    :cond_8
    :try_start_14
    const-string v3, "plain_text"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v13

    goto :goto_9

    :cond_9
    const-string/jumbo v3, "user_memo"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    goto :goto_9

    :cond_a
    const-string/jumbo v3, "title"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_3

    if-eqz v3, :cond_b

    move/from16 v3, v16

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v3, v20

    :goto_9
    const-string v8, "meta_value"

    if-eqz v3, :cond_d

    const/4 v12, 0x1

    if-eq v3, v12, :cond_c

    if-eq v3, v13, :cond_c

    :goto_a
    move-object/from16 v12, v21

    goto :goto_b

    :cond_c
    :try_start_15
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_b

    :cond_d
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_3

    move-object/from16 v19, v3

    goto :goto_a

    :goto_b
    :try_start_16
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v11, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_2

    :cond_e
    move-object/from16 v6, v19

    goto :goto_e

    :catch_2
    move-exception v0

    goto/16 :goto_12

    :catch_3
    move-exception v0

    move-object/from16 v12, v21

    goto :goto_12

    :catch_4
    move-exception v0

    goto :goto_f

    :cond_f
    :goto_c
    move-object/from16 v29, v3

    goto :goto_d

    :catch_5
    move-exception v0

    move-object/from16 v29, v3

    goto :goto_f

    :cond_10
    move-object/from16 v29, v3

    move-object/from16 v28, v8

    :goto_d
    move-object/from16 v21, v12

    move/from16 v30, v13

    move-object/from16 v6, v19

    move-object/from16 v12, v21

    :goto_e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v8, v28

    move-object/from16 v3, v29

    move/from16 v13, v30

    goto/16 :goto_7

    :catch_6
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v28, v8

    :goto_f
    move-object/from16 v21, v12

    move/from16 v30, v13

    goto :goto_12

    :cond_11
    move-object/from16 v29, v3

    move-object/from16 v19, v6

    move-object/from16 v28, v8

    move-object/from16 v21, v12

    move/from16 v30, v13

    move-object/from16 v22, v21

    goto :goto_13

    :catch_7
    move-exception v0

    move-object/from16 v29, v3

    goto :goto_11

    :catch_8
    move-exception v0

    move-object/from16 v29, v3

    goto :goto_10

    :catch_9
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v26, v6

    :goto_10
    move-object/from16 v27, v7

    :goto_11
    move-object/from16 v28, v8

    move/from16 v30, v13

    move-object/from16 v19, v12

    :goto_12
    :try_start_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v12

    move-object/from16 v6, v19

    :goto_13
    new-instance v0, Ld1/d;

    const/16 v20, 0x21

    move-object/from16 v19, v0

    move-object/from16 v21, v5

    invoke-direct/range {v19 .. v25}, Ld1/d;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v6}, Ld1/d;->j0(Ljava/lang/String;)V

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ld1/d;->H(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ld1/d;->P(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "categoryName = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , categoryOrder = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_a

    move/from16 v13, v30

    goto/16 :goto_16

    :catch_a
    move-exception v0

    move/from16 v13, v30

    goto :goto_15

    :catch_b
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v17, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move/from16 v30, v13

    goto :goto_15

    :catch_c
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v17, v5

    :goto_14
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    goto :goto_15

    :cond_12
    move-object/from16 v29, v3

    move-object/from16 v17, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v18, v12

    :try_start_18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "category"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid key!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_d

    goto :goto_16

    :catch_d
    move-exception v0

    goto :goto_15

    :catch_e
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v17, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v18, v12

    :goto_15
    :try_start_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_f

    :cond_13
    :goto_16
    move-object/from16 v5, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v8, v28

    move-object/from16 v3, v29

    goto/16 :goto_1

    :catch_f
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const-string v0, "downloadContentInfo() finishes"

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method private eraseLocalTempFiles(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ScrapbookScloudSync"

    const-string v1, "eraseLocalTempFiles()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/SCRAPBOOK01"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/utils/a;->d(Ljava/io/File;)Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "getImportItems : scrapbookDataRootFile is not deleted yet!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/utils/a;->d(Ljava/io/File;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mkdirs returned false"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method


# virtual methods
.method public downloadCategoryInfo()V
    .locals 13

    const-string v0, "name"

    const-string v1, "priority"

    const-string v2, "JSONException - "

    const-string v3, "ScrapbookScloudSync"

    const-string v4, "downloadCategoryInfo()"

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mCategoryItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mScrapbookServiceHelper:La2/f;

    invoke-virtual {v4}, La2/f;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v7, "key"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_category_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, ""

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Category "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " : key = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " , Value =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "_category_default"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_1
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mCategoryItems:Ljava/util/ArrayList;

    new-instance v8, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$d;

    invoke-direct {v8, v7, v9, v10}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$d;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-static {v3, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "downloadCategoryInfo finishes"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getImportItems()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImportItems()["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], concurrentrequest : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mUseConcurrentRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrapbookScloudSync"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v0, La2/f;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mAuthorization:Ljava/lang/String;

    invoke-direct {v0, v4}, La2/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mScrapbookServiceHelper:La2/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/notes/sync/utils/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/ScrapbookData"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->eraseLocalTempFiles(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->downloadCategoryInfo()V

    iget-boolean v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mUseConcurrentRequest:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->futures:Ljava/util/List;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->downloadContentInfo()Z

    invoke-direct {p0, v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->downloadContentFiles(Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImportItems() finishes ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] - elapsed time : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCancelled()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->onCancelled()V

    return-void
.end method

.method public startImport()V
    .locals 22

    move-object/from16 v8, p0

    const-string v0, "ScrapbookScloudSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startImport()["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    new-instance v0, La2/f;

    iget-object v1, v8, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mAuthorization:Ljava/lang/String;

    invoke-direct {v0, v1}, La2/f;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->mScrapbookServiceHelper:La2/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/utils/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ScrapbookData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v8, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    const/4 v1, 0x0

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SCRAPBOOK_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-interface {v0, v2, v1, v12}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onDownloaded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ld1/d;I)V

    :cond_0
    invoke-static {}, Lo/a;->a()Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v15, 0xa

    const/16 v16, 0x3e8

    const-wide/16 v17, 0x1e

    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v20, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    move-object v14, v1

    invoke-direct/range {v14 .. v20}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    move-object v14, v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    const/4 v15, 0x1

    new-array v7, v15, [Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v7, v12

    new-array v6, v15, [Ls0/c;

    new-instance v16, Ljava/lang/Object;

    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    iget-object v1, v8, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const-string v1, "ScrapbookScloudSync"

    const-string v2, "startImport : Download attached files and category info"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v12

    :goto_1
    const/16 v3, 0x12f

    if-ge v4, v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->z()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "ScrapbookScloudSync"

    const-string v1, "Not Enough Storage!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/utils/a;->d(Ljava/io/File;)Z

    move v0, v12

    :goto_2
    if-ge v0, v5, :cond_2

    iget-object v1, v8, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/d;

    invoke-virtual {v1, v12}, Ld1/d;->O(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ls0/c;

    const/16 v1, 0x143

    const-string v2, "device storage is full!"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, v8, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ld1/d;

    new-instance v2, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;

    move-object v1, v2

    move-object v15, v2

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    move/from16 v17, v4

    move-object v4, v11

    move/from16 v19, v5

    move-object v5, v6

    move-object/from16 v20, v6

    move-object v6, v7

    move-object/from16 v21, v7

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;Ld1/d;Ljava/lang/String;[Ls0/c;[Ljava/lang/Boolean;Ljava/lang/Object;)V

    if-eqz v13, :cond_4

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    :try_start_0
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter v20

    if-nez v13, :cond_6

    :try_start_1
    aget-object v1, v21, v12

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    goto :goto_3

    :cond_5
    const-string v0, "ScrapbookScloudSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startImport : Exception 4 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v20, v12

    invoke-virtual {v2}, Ls0/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, v20, v12

    throw v0

    :cond_6
    :goto_3
    monitor-exit v20

    :goto_4
    add-int/lit8 v4, v17, 0x1

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    const/4 v15, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v2, "Server Error!"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ls0/c;

    const-string v1, "Server Error!"

    const/16 v2, 0x12f

    invoke-direct {v0, v2, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_7
    throw v1

    :cond_8
    move v2, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    if-eqz v13, :cond_b

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    move v3, v12

    :goto_5
    if-ge v3, v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ScrapbookScloudSync"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    const-string v3, "Server Error!"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ls0/c;

    const-string v1, "Server Error!"

    invoke-direct {v0, v2, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_9
    throw v1

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_6
    const-string v4, "ScrapbookScloudSync"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    invoke-interface {v14}, Ljava/util/List;->clear()V

    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/utils/a;->d(Ljava/io/File;)Z

    monitor-enter v20

    if-eqz v13, :cond_d

    :try_start_3
    aget-object v0, v21, v12

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    goto :goto_8

    :cond_c
    const-string v0, "ScrapbookScloudSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startImport : Exception 5 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v20, v12

    invoke-virtual {v2}, Ls0/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, v20, v12

    throw v0

    :cond_d
    :goto_8
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v0, "ScrapbookScloudSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish startImport()["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] - elapsed time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public syncProgress()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
