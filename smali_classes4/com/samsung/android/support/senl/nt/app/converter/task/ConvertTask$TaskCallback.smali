.class public Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$ISDocXConvertTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskCallback"
.end annotation


# instance fields
.field private mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;

    return-void
.end method


# virtual methods
.method public convertDocument(Ljava/util/List;JLcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->b(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->a(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->setReqFileSize(J)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->b(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->a(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object p3

    invoke-interface {p2, p3, p1, p4}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor;->convertDocument(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Ljava/util/List;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;)V

    return-void
.end method

.method public getExternalCallback()Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;

    return-object v0
.end method

.method public onPostConvert(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 3

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getState()I

    move-result v0

    const-string v1, "ConvertTask"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostConvert, dstType : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getDstType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->c(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getDstType()I

    move-result v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->FAILED:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->updateStatus(ILcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->a(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;->onFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostConvert, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getDstType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->FINISHED:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->SUB_TASK_SUCCESS:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->c(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getDstType()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->updateStatus(ILcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->a(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;->onSuccess(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ConvertSubTaskParams;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getPathList()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ConvertSubTaskParams;-><init>(Ljava/util/List;Z)V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->d(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$IConvertParams;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onPreConvert(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreConvert, src : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getSrcType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> dst : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getDstType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConvertTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->c(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getDstType()I

    move-result p1

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->PROGRESSING:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->updateStatus(ILcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->c(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getDstType()I

    move-result v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->FAILED:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;->updateStatus(ILcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->a(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;->onFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;->mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;

    return-void
.end method
