.class public Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadCompleteEvent;
.super Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;
.source "SourceFile"


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "LOCALE_DOWNLOAD_COMPLETE_EVENT"


# instance fields
.field private mLocale:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "LOCALE_DOWNLOAD_COMPLETE_EVENT"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadCompleteEvent;->mLocale:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadCompleteEvent;->mStatus:I

    return-void
.end method

.method public static getDefinedEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "LOCALE_DOWNLOAD_COMPLETE_EVENT"

    return-object v0
.end method


# virtual methods
.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadCompleteEvent;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadCompleteEvent;->mStatus:I

    return v0
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadCompleteEvent;->mLocale:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadCompleteEvent;->mStatus:I

    return-void
.end method
