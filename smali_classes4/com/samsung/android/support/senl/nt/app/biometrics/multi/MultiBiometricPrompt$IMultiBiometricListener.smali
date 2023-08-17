.class public interface abstract Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMultiBiometricListener"
.end annotation


# static fields
.field public static final PROMPT_ERROR_CANCELED:I = 0x5

.field public static final PROMPT_ERROR_LOCKOUT:I = 0x7

.field public static final PROMPT_ERROR_LOCKOUT_PERMANENT:I = 0x9

.field public static final PROMPT_ERROR_TIMEOUT:I = 0x3


# virtual methods
.method public abstract onAuthenticationCanceled()V
.end method

.method public abstract onAuthenticationError(ILjava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationFailed()V
.end method

.method public abstract onAuthenticationSucceeded()V
.end method

.method public abstract onUsePasswordClicked()V
.end method
