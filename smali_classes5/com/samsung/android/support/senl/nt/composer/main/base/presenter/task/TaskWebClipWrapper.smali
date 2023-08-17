.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskWebClipWrapper"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;-><init>()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    return-void
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->clear()V

    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isAvailableToSave()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKeepTaskDuringActivityRecreation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
