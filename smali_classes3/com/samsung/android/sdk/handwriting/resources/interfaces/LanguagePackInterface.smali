.class public interface abstract Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadSizeListener;,
        Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDeleteListener;,
        Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract delete(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDeleteListener;)V
.end method

.method public abstract download(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V
.end method

.method public abstract downloadLanguage(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V
.end method

.method public abstract getDownloadSize(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadSizeListener;)V
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract isDownloadInProgress()Z
.end method

.method public abstract isDownloaded()Z
.end method

.method public abstract isInstallable()Z
.end method

.method public abstract isPreloaded()Z
.end method

.method public abstract isUpdateAvailable()Z
.end method

.method public abstract setDownloadLanguageListener(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V
.end method

.method public abstract setDownloadListener(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V
.end method

.method public abstract setDownloadSizeListener(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadSizeListener;)V
.end method
