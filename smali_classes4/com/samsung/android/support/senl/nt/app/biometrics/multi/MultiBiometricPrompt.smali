.class public Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Biometrics$MultiBiometricPrompt"


# instance fields
.field private mCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mListener:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$1;-><init>(Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;->mCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;->lambda$authenticate$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;)Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;->mListener:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;

    return-object p0
.end method

.method private synthetic lambda$authenticate$0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;->mListener:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;->onUsePasswordClicked()V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;)V
    .locals 3
    .param p2    # Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Biometrics$MultiBiometricPrompt"

    const-string v1, "authenticate"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;->mListener:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;

    new-instance p2, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {p2, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_verify_identity:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_fingerprint_dialog_use_password:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/a;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/a;-><init>(Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;)V

    invoke-virtual {p2, v0, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object p2

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;->mCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {p2, v0, p1, v1}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method

.method public cancelAuthenticate()V
    .locals 2

    const-string v0, "Biometrics$MultiBiometricPrompt"

    const-string v1, "cancelAuthenticate"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    return-void
.end method
