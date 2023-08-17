.class public Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisBiometricPromptImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IIrisApiImpl;


# static fields
.field private static final TAG:Ljava/lang/String; = "Biometrics$IrisManagerImpl"


# instance fields
.field private mCancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisBiometricPromptImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisBiometricPromptImpl;->lambda$authenticate$0(Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic lambda$authenticate$0(Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->onUsePasswordClicked()V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;)V
    .locals 3
    .param p3    # Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    const-string p2, "Biometrics$IrisManagerImpl"

    const-string v0, "authenticate"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/a;

    invoke-direct {v2, p3}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/a;-><init>(Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;)V

    invoke-virtual {p2, v0, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/lock/BiometricPromptHelper;->setBiometricType(Landroid/hardware/biometrics/BiometricPrompt$Builder;I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisBiometricPromptImpl$1;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisBiometricPromptImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisBiometricPromptImpl;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;)V

    new-instance p3, Landroid/os/CancellationSignal;

    invoke-direct {p3}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisBiometricPromptImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p2, p3, p1, v0}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method

.method public cancelAuthenticate()V
    .locals 2

    const-string v0, "Biometrics$IrisManagerImpl"

    const-string v1, "cancelAuthenticate"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisBiometricPromptImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    return-void
.end method

.method public getIrisId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isRetryCase(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
