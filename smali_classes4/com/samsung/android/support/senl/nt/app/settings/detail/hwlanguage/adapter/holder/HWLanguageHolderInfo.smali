.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;
.super Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_AVAILABLE_HEADER:I = 0x3

.field public static final TYPE_AVAILABLE_ITEM:I = 0x4

.field public static final TYPE_DOWNLOADED_HEADER:I = 0x0

.field public static final TYPE_DOWNLOADED_ITEM:I = 0x1

.field public static final TYPE_NONE:I = 0x2


# instance fields
.field private mProgress:I

.field private mTotal:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;-><init>(Ljava/lang/String;ZZZZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;)V
    .locals 8

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isDownloaded()Z

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isUpdateAvailable()Z

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isPreloaded()Z

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isInstallable()Z

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isDownloadInProgress()Z

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isCancelInProgress()Z

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;-><init>(Ljava/lang/String;ZZZZZZ)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->mType:I

    iget v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->mType:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->getLocale()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->compareTo(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    iget v0, v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->mType:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->mType:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->mProgress:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->mTotal:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setProgress(I)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->mProgress:I

    return-object p0
.end method

.method public setTotal(I)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->mTotal:I

    return-object p0
.end method

.method public setType(I)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->mType:I

    return-object p0
.end method
