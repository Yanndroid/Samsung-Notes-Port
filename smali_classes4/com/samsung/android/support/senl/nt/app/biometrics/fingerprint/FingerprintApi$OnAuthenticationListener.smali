.class public interface abstract Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAuthenticationListener"
.end annotation


# static fields
.field public static final PROMPT_ERROR_CANCELED:I

.field public static final PROMPT_ERROR_LOCKOUT:I

.field public static final PROMPT_ERROR_LOCKOUT_PERMANENT:I

.field public static final PROMPT_ERROR_TIMEOUT:I

.field public static final PROMPT_ERROR_USER_CANCELED:I

.field public static final isOverOrSameWithPOS:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->isOverOrSameWithPOS:Z

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_TIMEOUT:I

    const/4 v0, 0x7

    sput v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_LOCKOUT:I

    const/16 v0, 0x9

    sput v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_LOCKOUT_PERMANENT:I

    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_CANCELED:I

    const/16 v0, 0xa

    sput v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_USER_CANCELED:I

    return-void
.end method


# virtual methods
.method public abstract onAuthenticationError(ILjava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationFailed()V
.end method

.method public abstract onAuthenticationHelp(Ljava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationSucceeded()V
.end method

.method public abstract onUsePasswordClicked()V
.end method
