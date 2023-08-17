.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$IProgressBarUpdater;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;",
        "R::",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/CoeditPauseController$Contract;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field public mProgressBarUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$IProgressBarUpdater;

.field public mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

.field private mTaskCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Task"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V
    .locals 0

    return-void
.end method

.method public checkPermission(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public abstract executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation
.end method

.method public getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    return-object v0
.end method

.method public getSynchronizedCancelAction()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/coedit/SynchronizedCancelAction;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->mTaskCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    return-object v0
.end method

.method public isAvailableToReload()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAvailableToSave()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAvailableToUpdate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCoeditNoTimeoutPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKeepTaskDuringActivityRecreation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedToCheckNoteSize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedToCheckStorage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNeededToWaitPermission()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isProgressBarStyle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRequestPermissionsResult(ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITI;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V

    return-void
.end method

.method public setInputValue(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    return-void
.end method

.method public setProgressBarUpdater(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$IProgressBarUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->mProgressBarUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$IProgressBarUpdater;

    return-void
.end method

.method public setStorageChecker(Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    return-void
.end method

.method public setTaskCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->mTaskCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    return-void
.end method
