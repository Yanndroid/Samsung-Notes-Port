.class public Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFailedCount:I

.field private mInvalidInputCount:I

.field private mStorageFailedCount:I

.field private mSuccessCount:I

.field private mTotalCount:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mTotalCount:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mInvalidInputCount:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mSuccessCount:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mFailedCount:I

    iput p5, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mStorageFailedCount:I

    return-void
.end method


# virtual methods
.method public getFailedCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mFailedCount:I

    return v0
.end method

.method public getProgressCount()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mInvalidInputCount:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mFailedCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mSuccessCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getStorageFailedCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mStorageFailedCount:I

    return v0
.end method

.method public getSuccessCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mSuccessCount:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mTotalCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total/invalidInput/success/failed/storageFailed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mTotalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mInvalidInputCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mSuccessCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mFailedCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/CountInfo;->mStorageFailedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
