.class public interface abstract Lcom/samsung/android/sdk/mobileservice/auth/IAuthCodeResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/auth/IAuthCodeResultCallback$Stub;,
        Lcom/samsung/android/sdk/mobileservice/auth/IAuthCodeResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Landroid/os/Bundle;)V
.end method
