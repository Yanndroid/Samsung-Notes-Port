.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;

.field private mIsCanceled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskEraseAll"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->mIsCanceled:Z

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private notifyResultError()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->mIsCanceled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$ResultValues;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$ResultValues;-><init>()V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$ResultValues;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$ResultValues;-><init>()V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->mIsCanceled:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->cancel()V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->TAG:Ljava/lang/String;

    const-string v0, "cancel "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clear()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->TAG:Ljava/lang/String;

    const-string v1, "clear "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->mIsCanceled:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->TAG:Ljava/lang/String;

    const-string v1, "executeTask#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/c;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isValidDoc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->notifyResultError()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public isAvailableToSave()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
