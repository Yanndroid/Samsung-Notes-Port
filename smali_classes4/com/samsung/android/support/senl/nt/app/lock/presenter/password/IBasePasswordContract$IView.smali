.class public interface abstract Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract getEncryptedPasswordHash()Ljava/lang/String;
.end method

.method public abstract getEncryptedPasswordSalt()Ljava/lang/String;
.end method

.method public abstract hideProgress()V
.end method

.method public abstract ignoreInputEvent(Z)V
.end method

.method public abstract isUseBiometricChecked()Z
.end method

.method public abstract loginSamsungAccount(I)V
.end method

.method public abstract resetOldBiometricBlockingEndTime()V
.end method

.method public abstract setBiometricsEnabled()V
.end method

.method public abstract showProgress()V
.end method
