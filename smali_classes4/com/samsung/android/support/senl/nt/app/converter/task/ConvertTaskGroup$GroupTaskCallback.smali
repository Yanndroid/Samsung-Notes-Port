.class Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupTaskCallback"
.end annotation


# instance fields
.field private mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;

.field private mFailedCount:I

.field private mGroupId:I

.field private mInvalidInputCount:I

.field private mStatusCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupStatusCallback;

.field private mStorageFailedCount:I

.field private mSuccessCount:I

.field private mTotalCount:I

.field private mUUIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValidInputCount:I


# direct methods
.method public constructor <init>(IILcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mValidInputCount:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mInvalidInputCount:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mSuccessCount:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mFailedCount:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mStorageFailedCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mUUIDList:Ljava/util/List;

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mGroupId:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mTotalCount:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;

    return-void
.end method

.method private isFinished()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mValidInputCount:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mFailedCount:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mSuccessCount:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onEnd()V
    .locals 10

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ConvertTaskGroup"

    const-string v1, "TaskGroupCallback, onEnd"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mStatusCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupStatusCallback;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mGroupId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupStatusCallback;->onEnd(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;-><init>(II)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;

    iget v5, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mTotalCount:I

    iget v6, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mInvalidInputCount:I

    iget v7, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mSuccessCount:I

    iget v8, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mFailedCount:I

    iget v9, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mStorageFailedCount:I

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;-><init>(IIIII)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TaskGroupCallback, onEnd, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mSuccessCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;

    const/4 v3, 0x1

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mUUIDList:Ljava/util/List;

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->setUuidList(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    move-result-object v1

    invoke-direct {v4, v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->setUuidList(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    move-result-object v1

    invoke-direct {v4, v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;)V

    :goto_0
    invoke-interface {v0, v3, v4}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;->onEnd(ZLcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCreated()V
    .locals 0

    return-void
.end method

.method public onFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskGroupCallback, onFailed#, state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConvertTaskGroup"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mFailedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mFailedCount:I

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mStorageFailedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mStorageFailedCount:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;

    new-instance v8, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mTotalCount:I

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mInvalidInputCount:I

    iget v5, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mSuccessCount:I

    iget v6, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mFailedCount:I

    iget v7, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mStorageFailedCount:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;-><init>(IIIII)V

    invoke-direct {v1, p2, v8}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;->onFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->onEnd()V

    return-void
.end method

.method public onPreFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreFailed, status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;->getStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConvertTaskGroup"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mInvalidInputCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mInvalidInputCount:I

    return-void
.end method

.method public onPrepared()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mTotalCount:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mInvalidInputCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mValidInputCount:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;

    if-eqz v1, :cond_2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConvertTaskGroup"

    const-string v1, "onPrepared, all document already have mappedUuids"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->onEnd()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;->onCreated()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;-><init>(I)V

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;->onPreFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 9

    const-string v0, "ConvertTaskGroup"

    const-string v1, "TaskGroupCallback, onSuccess#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getDstType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mSuccessCount:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mUUIDList:Ljava/util/List;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getUuidList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;

    new-instance v8, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mTotalCount:I

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mInvalidInputCount:I

    iget v5, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mSuccessCount:I

    iget v6, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mFailedCount:I

    iget v7, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mStorageFailedCount:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;-><init>(IIIII)V

    invoke-direct {v1, p2, v8}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskGroupResult;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;->onSuccess(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->onEnd()V

    :cond_1
    return-void
.end method

.method public setExternalCallback(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mExternalCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;

    return-void
.end method

.method public setStatusCallback(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->mStatusCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupStatusCallback;

    return-void
.end method
