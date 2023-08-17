.class Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/BiometricPromptImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/IFingerprintApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "Biometrics$BiometricPromptImpl"


# instance fields
.field private mCancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/BiometricPromptImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/BiometricPromptImpl;->lambda$authenticate$0(Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic lambda$authenticate$0(Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->onUsePasswordClicked()V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    const-string v0, "Biometrics$BiometricPromptImpl"

    const-string v1, "authenticate"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_verify_identity:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_fingerprint_dialog_use_password:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/a;

    invoke-direct {v3, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/a;-><init>(Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/lock/BiometricPromptHelper;->setBiometricType(Landroid/hardware/biometrics/BiometricPrompt$Builder;I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/BiometricPromptImpl$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/BiometricPromptImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/BiometricPromptImpl;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;)V

    new-instance p2, Landroid/os/CancellationSignal;

    invoke-direct {p2}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/BiometricPromptImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v0, p2, p1, v1}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method

.method public cancelAuthenticate()V
    .locals 2

    const-string v0, "Biometrics$BiometricPromptImpl"

    const-string v1, "cancelAuthenticate"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/BiometricPromptImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    return-void
.end method

.method public getFingerprintId(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasChangedFingerprint(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefFingerprintChanged(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Biometrics$BiometricPromptImpl"

    const-string v2, "Fingerprint has changed"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefFingerprintChanged(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method
