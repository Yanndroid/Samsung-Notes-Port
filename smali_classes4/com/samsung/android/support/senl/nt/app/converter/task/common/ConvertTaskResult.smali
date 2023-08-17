.class public Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;


# instance fields
.field private mDstType:I

.field private mPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcType:I

.field private mState:I

.field private mUuidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mState:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mSrcType:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mDstType:I

    return-void
.end method


# virtual methods
.method public getDstType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mDstType:I

    return v0
.end method

.method public getFailedCount()I
    .locals 1

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mPathList:Ljava/util/List;

    return-object v0
.end method

.method public getProgressCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSrcType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mSrcType:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mState:I

    return v0
.end method

.method public getStorageFailedCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSuccessCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mUuidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mUuidList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mUuidList:Ljava/util/List;

    return-object v0
.end method

.method public hasMultipleUuids()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mUuidList:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setPathList(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mPathList:Ljava/util/List;

    goto :goto_2

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mState:I

    :goto_2
    return-object p0
.end method

.method public setState(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mState:I

    return-object p0
.end method

.method public setUuidList(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mState:I

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mState:I

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mUuidList:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dstType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mDstType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mPathList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " / uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->mUuidList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
