.class public interface abstract Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentDownloadingResultCallback"
.end annotation


# virtual methods
.method public abstract onProgress(Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;)V
.end method

.method public abstract onResult(Lcom/samsung/android/sdk/mobileservice/social/share/result/ContentDownloadResult;)V
.end method
