.class public Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LanguageInfo"
.end annotation


# instance fields
.field private final isCancelInProgress:Z

.field private final isDownloadInProgress:Z

.field private final isDownloaded:Z

.field private final isInstallable:Z

.field private final isPreloaded:Z

.field private final isUpdateAvailable:Z

.field private final locale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isDownloaded:Z

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isUpdateAvailable:Z

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isPreloaded:Z

    iput-boolean p5, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isInstallable:Z

    iput-boolean p6, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isDownloadInProgress:Z

    iput-boolean p7, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isCancelInProgress:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->locale:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->locale:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->getLocale()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isCancelInProgress:Z

    return v0
.end method

.method public isDownloadInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isDownloadInProgress:Z

    return v0
.end method

.method public isDownloaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isDownloaded:Z

    return v0
.end method

.method public isInstallable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isInstallable:Z

    return v0
.end method

.method public isPreloaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isPreloaded:Z

    return v0
.end method

.method public isUpdateAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->isUpdateAvailable:Z

    return v0
.end method
