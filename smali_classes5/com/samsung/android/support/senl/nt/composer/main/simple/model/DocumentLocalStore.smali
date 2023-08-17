.class public Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IDataStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposer:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsNeededDownload:Z

.field private mLoadListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

.field private mLoadResult:Ljava/lang/Runnable;

.field private mLoadTask:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "DocumentLocalStore"

    const-string v1, "SCV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mIsNeededDownload:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mComposer:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mLoadListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mLoadResult:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mLoadTask:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mLoadResult:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private requestDownloadServerNote(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->getDocPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;->fullFolderPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->getUuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;->docUuid:Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;)V

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;->tempServerNoteListener:Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestSyncDownForServerNoteTemporarily(Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;)V

    return-void
.end method


# virtual methods
.method public loadDocument(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mComposer:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->getDocPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->getPageWidth()I

    move-result v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mLoadTask:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mIsNeededDownload:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->requestDownloadServerNote(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method public onDestroyed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mLoadResult:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setLoadListener(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->mLoadListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

    return-void
.end method
