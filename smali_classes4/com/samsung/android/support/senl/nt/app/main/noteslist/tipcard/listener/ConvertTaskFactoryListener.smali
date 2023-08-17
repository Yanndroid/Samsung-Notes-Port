.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConvertTaskFactoryListener"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;)V
    .locals 0
    .param p2    # Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;)V

    return-void
.end method

.method private clearConvertTaskData()V
    .locals 2

    const-string v0, "ConvertTaskFactoryListener"

    const-string v1, "clearConvertTaskData# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->clearConvertTaskProgress()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setConvertAll(Z)V

    return-void
.end method

.method private disconnectConvertTaskManager()V
    .locals 2

    const-string v0, "ConvertTaskFactoryListener"

    const-string v1, "disconnectConvertTaskManager# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->disconnect()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;->clearConvertTaskData()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;->updateTipCardAfterDisconnected()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mWeakRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method private invalidateOptionsMenu()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mWeakRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private sendSALogging(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mWeakRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_convert_sdoc_from_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "a"

    goto :goto_0

    :cond_1
    const-string p1, "b"

    :goto_0
    const-string v0, "502"

    const-string v1, "5153"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateTipCardAfterDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mWeakRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;)V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->runOnUiThread(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCreated()V
    .locals 2

    const-string v0, "ConvertTaskFactoryListener"

    const-string v1, "onCreated# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEnd(ZLcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getTotalCount()I

    move-result p1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getProgressCount()I

    move-result v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getStorageFailedCount()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;->setProgress(III)V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getStorageFailedCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;->sendSALogging(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;->disconnectConvertTaskManager()V

    return-void
.end method

.method public onFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailed# state : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConvertTaskFactoryListener"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getTotalCount()I

    move-result p1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getProgressCount()I

    move-result v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getStorageFailedCount()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;->setProgress(III)V

    return-void
.end method

.method public onPreFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreFailed# msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConvertTaskFactoryListener"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;->sendSALogging(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;->disconnectConvertTaskManager()V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSuccess# state : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConvertTaskFactoryListener"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getDstType()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getTotalCount()I

    move-result p1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getProgressCount()I

    move-result v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getStorageFailedCount()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;->setProgress(III)V

    :cond_0
    return-void
.end method

.method public setOnCancelled()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->setOnCancelled()V

    const-string v0, "ConvertTaskFactoryListener"

    const-string v1, "setOnCancelled# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;->clearConvertTaskData()V

    return-void
.end method

.method public setProgress(III)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->setProgress(III)V

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setConvertTaskProgress(III)V

    return-void
.end method
