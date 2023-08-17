.class public Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;


# instance fields
.field private mCountInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;

.field private mResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;->mResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;->mCountInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;

    return-void
.end method


# virtual methods
.method public getDstType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;->mResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getDstType()I

    move-result v0

    return v0
.end method

.method public getFailedCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;->mCountInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->getFailedCount()I

    move-result v0

    return v0
.end method

.method public getPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;->mResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getPathList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProgressCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;->mCountInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->getProgressCount()I

    move-result v0

    return v0
.end method

.method public getSrcType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;->mResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getSrcType()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;->mResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getState()I

    move-result v0

    return v0
.end method

.method public getStorageFailedCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;->mCountInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->getStorageFailedCount()I

    move-result v0

    return v0
.end method

.method public getSuccessCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;->mCountInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->getSuccessCount()I

    move-result v0

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;->mCountInfo:Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->getTotalCount()I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;->mResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUuidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;->mResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getUuidList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMultipleUuids()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;->mResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->hasMultipleUuids()Z

    move-result v0

    return v0
.end method
