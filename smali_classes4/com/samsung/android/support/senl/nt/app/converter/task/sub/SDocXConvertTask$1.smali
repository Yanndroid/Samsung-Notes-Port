.class Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mFailedCount:I

.field private mSuccessCount:I

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->mSuccessCount:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->mFailedCount:I

    return-void
.end method

.method private deleteSrcFile(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->a(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private onEnd()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->b(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->mSuccessCount:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->mFailedCount:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->postConvert()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFailed(ILcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->mFailedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->mFailedCount:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;->getSrcPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->deleteSrcFile(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;->isMemoryAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->setState(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->onEnd()V

    return-void
.end method

.method public onSuccess(ILcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->onEnd()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSuccess - src : + "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;->getSrcPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " >>> dst : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;->getDstPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDocXConvertTask"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->mSuccessCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->mSuccessCount:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->c(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;->getSrcPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->deleteSrcFile(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->mSuccessCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->mSuccessCount:I

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;->getSrcPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;->deleteSrcFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
