.class public interface abstract Lcom/samsung/android/sdk/mobileservice/auth/IValidationResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/auth/IValidationResultCallback$Stub;,
        Lcom/samsung/android/sdk/mobileservice/auth/IValidationResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;Ljava/lang/String;ZZZZ)V
.end method

.method public abstract onSuccess()V
.end method
