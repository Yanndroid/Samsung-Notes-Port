.class public Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;
.super Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
.source "SourceFile"


# static fields
.field public static final STATE_CONVERTING:I = 0x1

.field public static final STATE_CONVERTING_SDOC:I = 0x2

.field public static final STATE_DOWNLOADING:I = 0x0

.field public static final STATE_IMPORTING_PDF:I = 0x4

.field public static final STATE_IMPORTING_SDOCX:I = 0x3

.field public static final STATE_NONE:I = -0x1


# instance fields
.field private mFailed:I

.field private mFinished:I

.field private mProgressRate:Ljava/lang/String;

.field private mProgressType:Ljava/lang/String;

.field private mProgressValue:I

.field private mState:I

.field private mTotal:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;-><init>(IIIIII)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mState:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->setProgressInfo(III)V

    invoke-virtual {p0, p6}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->setState(I)V

    return-void
.end method

.method private updateProgressRate()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mTotal:I

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mFinished:I

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mFinished:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mProgressRate:Ljava/lang/String;

    return-void
.end method

.method private updateProgressType()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mState:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$string;->base_string_downloading:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mProgressType:Ljava/lang/String;

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$string;->base_string_converting:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$string;->base_string_importing_notes:I

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :goto_2
    return-void
.end method

.method private updateProgressValue()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mTotal:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mProgressValue:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mFinished:I

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mProgressValue:I

    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFailed()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mFailed:I

    return v0
.end method

.method public getFinished()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mFinished:I

    return v0
.end method

.method public getNeutralButtonResourceId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getProgressRate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mProgressRate:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mProgressType:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mProgressValue:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mState:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mTotal:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mFinished:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mTotal:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotInitialized()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mFinished:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mTotal:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFinished(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mFinished:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mFinished:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->updateProgressValue()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->updateProgressRate()V

    :cond_0
    return-void
.end method

.method public setProgressInfo(III)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mTotal:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mFinished:I

    if-ne v0, p2, :cond_0

    if-eq v0, p3, :cond_1

    :cond_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mTotal:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mFinished:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mFailed:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->updateProgressValue()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->updateProgressRate()V

    :cond_1
    return-void
.end method

.method public setState(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mState:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->updateProgressType()V

    :cond_0
    return-void
.end method

.method public setTotal(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mTotal:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->mTotal:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->updateProgressValue()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->updateProgressRate()V

    :cond_0
    return-void
.end method
