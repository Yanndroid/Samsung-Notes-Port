.class public interface abstract Lcom/samsung/android/sdk/mobileservice/profile/ISyncResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/profile/ISyncResultCallback$Stub;,
        Lcom/samsung/android/sdk/mobileservice/profile/ISyncResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/samsung/android/sdk/mobileservice/profile/Profile;)V
.end method
