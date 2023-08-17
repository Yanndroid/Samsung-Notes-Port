.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareWord;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskShareWord"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareWord;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;-><init>()V

    return-void
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareWord;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareWord;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareWord;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareWord$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareWord$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareWord;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$InputValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareWord;->TAG:Ljava/lang/String;

    return-object v0
.end method
