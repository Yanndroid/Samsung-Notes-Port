.class public interface abstract Lcom/samsung/android/sdk/mobileservice/social/buddy/ISyncResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/buddy/ISyncResultCallback$Stub;,
        Lcom/samsung/android/sdk/mobileservice/social/buddy/ISyncResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onSuccess()V
.end method
