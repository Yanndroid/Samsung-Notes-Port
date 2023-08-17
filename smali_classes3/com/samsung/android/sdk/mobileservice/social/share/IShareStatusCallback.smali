.class public interface abstract Lcom/samsung/android/sdk/mobileservice/social/share/IShareStatusCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/share/IShareStatusCallback$Stub;,
        Lcom/samsung/android/sdk/mobileservice/social/share/IShareStatusCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Landroid/os/Bundle;)V
.end method

.method public abstract onPause(Landroid/os/Bundle;)V
.end method

.method public abstract onResume(Landroid/os/Bundle;)V
.end method
