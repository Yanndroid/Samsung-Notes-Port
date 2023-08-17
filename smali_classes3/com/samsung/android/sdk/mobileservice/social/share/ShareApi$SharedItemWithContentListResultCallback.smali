.class public interface abstract Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithContentListResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SharedItemWithContentListResultCallback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onProgress(Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;)V
.end method

.method public abstract onResult(Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemWithUriListResult;)V
.end method

.method public abstract onUploadComplete(Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;)V
.end method
