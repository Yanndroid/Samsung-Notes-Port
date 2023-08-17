.class public interface abstract Lcom/samsung/android/sdk/mobileservice/social/share/IShareResultWithFileListCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/share/IShareResultWithFileListCallback$Stub;,
        Lcom/samsung/android/sdk/mobileservice/social/share/IShareResultWithFileListCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onFailure(JLjava/lang/String;)V
.end method

.method public abstract onProgress(Landroid/os/Bundle;)V
.end method

.method public abstract onSuccess(Landroid/os/Bundle;)V
.end method

.method public abstract onUploadComplete(Landroid/os/Bundle;)V
.end method
