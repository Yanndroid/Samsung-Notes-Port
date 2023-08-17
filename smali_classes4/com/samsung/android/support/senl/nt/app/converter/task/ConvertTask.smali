.class public Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConvertTask"


# instance fields
.field private mCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;

.field private mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

.field private mRequestor:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor;

.field private mStatus:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;

.field private mSubTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mStatus:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mSubTasks:Ljava/util/Queue;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ConvertTask is created, callerId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getCallerId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConvertTask"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mRequestor:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mStatus:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$IConvertParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->runConvert(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$IConvertParams;)V

    return-void
.end method

.method private isState(Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mStatus:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->getState()Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private onFinished()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mRequestor:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->release()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;

    :cond_0
    return-void
.end method

.method private runConvert(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$IConvertParams;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mSubTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->onFinished()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask;->setParams(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$IConvertParams;)V

    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public addSubTask(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mSubTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCallback()Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;

    return-object v0
.end method

.method public getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    return-object v0
.end method

.method public getStatus()Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mStatus:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;

    return-object v0
.end method

.method public isEmptyTask()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mSubTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->PROGRESSING:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->isState(Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->SUB_TASK_SUCCESS:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->isState(Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->WAITING:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->isState(Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->runConvert(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$IConvertParams;)V

    return-void
.end method

.method public setRequestor(Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mRequestor:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->mSubTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask;

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
