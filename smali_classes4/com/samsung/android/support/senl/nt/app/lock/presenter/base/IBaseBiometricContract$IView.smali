.class public interface abstract Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract changeToPasswordVerification(I)V
.end method

.method public abstract getIsChangingToPasswordUI()Z
.end method

.method public abstract getRemainBlockTime()I
.end method

.method public abstract getSavedOldBiometricBlockingTime()J
.end method

.method public abstract isBiometricBlocked()Z
.end method

.method public abstract isOldBiometricBlocked()Z
.end method

.method public abstract isOldBiometricBlockedPermanent()Z
.end method

.method public abstract isPasswordBlocked()Z
.end method

.method public abstract onAuthenticationLockOutPermanent(Ljava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationLockedOut()V
.end method

.method public abstract onAuthenticationSuccess()V
.end method

.method public abstract onOldBiometricAuthenticationFailed()V
.end method

.method public abstract setIsAutoCloseCase(Z)V
.end method

.method public abstract setIsWaitingPromptUI(Z)V
.end method

.method public abstract showTimerDialog(I)V
.end method
