.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut$InputValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTaskCopy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;

.field private mTaskDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDelete;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskCut"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;-><init>()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDelete;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut;->mTaskDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDelete;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDelete;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut;->mTaskDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDelete;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut;->mTaskCopy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut;->mTaskCopy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut;->mTaskDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDelete;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDelete;->clear()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut;->mTaskDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDelete;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->clear()V

    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut$InputValues;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut;->mTaskCopy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut$InputValues;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setTaskCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCut;->mTaskCopy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;)V

    return-void
.end method

.method public isAvailableToSave()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
