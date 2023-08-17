.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsCanceled:Z

.field private mShareBuilder:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskMakeNotCorruptShareNote"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;-><init>()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->mIsCanceled:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->mShareBuilder:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->mShareBuilder:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    return-void
.end method

.method public static bridge synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->TAG:Ljava/lang/String;

    const-string v1, "cancel#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->mShareBuilder:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->mShareBuilder:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->mShareBuilder:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->mIsCanceled:Z

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->clear()V

    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
