.class Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->convert(Ljava/util/List;Lx/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;

.field public final synthetic val$itemList:Ljava/util/List;

.field public final synthetic val$listener:Lx/c$a;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;Ljava/util/List;Lx/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$1;->val$itemList:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$1;->val$listener:Lx/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onProgress(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$1;->val$listener:Lx/c$a;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getProgressCount()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lx/c$a;->b(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgress : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getProgressCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getTotalCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExternalConverterContractImpl"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreated()V
    .locals 2

    const-string v0, "ExternalConverterContractImpl"

    const-string v1, "onCreated"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEnd(ZLcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$1;->val$listener:Lx/c$a;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getTotalCount()I

    move-result v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getSuccessCount()I

    move-result v1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getFailedCount()I

    move-result p2

    invoke-interface {p1, v0, v1, p2}, Lx/c$a;->a(III)V

    return-void
.end method

.method public onFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getSrcPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$1;->onProgress(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getFailedCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExternalConverterContractImpl"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPreFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$1;->val$itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$1;->val$listener:Lx/c$a;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v0}, Lx/c$a;->a(III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreFailed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;->getStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExternalConverterContractImpl"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getSrcPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$1;->onProgress(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSuccess : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getSuccessCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExternalConverterContractImpl"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
