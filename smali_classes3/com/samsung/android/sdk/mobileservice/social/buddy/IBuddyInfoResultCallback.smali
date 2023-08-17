.class public interface abstract Lcom/samsung/android/sdk/mobileservice/social/buddy/IBuddyInfoResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/buddy/IBuddyInfoResultCallback$Stub;,
        Lcom/samsung/android/sdk/mobileservice/social/buddy/IBuddyInfoResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Landroid/os/Bundle;)V
.end method
