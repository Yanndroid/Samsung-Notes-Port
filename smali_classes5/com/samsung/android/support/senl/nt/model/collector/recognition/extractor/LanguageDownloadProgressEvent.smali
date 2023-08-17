.class public Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadProgressEvent;
.super Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;
.source "SourceFile"


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "LOCALE_DOWNLOAD_PROGRESS"


# instance fields
.field private mLocale:Ljava/lang/String;

.field private mMax:I

.field private mProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "LOCALE_DOWNLOAD_PROGRESS"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const-string v0, "LOCALE_DOWNLOAD_PROGRESS"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadProgressEvent;->mLocale:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadProgressEvent;->mProgress:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadProgressEvent;->mMax:I

    return-void
.end method

.method public static getDefinedEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "LOCALE_DOWNLOAD_PROGRESS"

    return-object v0
.end method


# virtual methods
.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadProgressEvent;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadProgressEvent;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadProgressEvent;->mProgress:I

    return v0
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadProgressEvent;->mLocale:Ljava/lang/String;

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadProgressEvent;->mMax:I

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadProgressEvent;->mProgress:I

    return-void
.end method
