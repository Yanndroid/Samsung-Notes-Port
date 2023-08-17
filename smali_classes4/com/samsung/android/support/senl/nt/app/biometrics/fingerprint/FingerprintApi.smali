.class public Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;,
        Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_REGISTER_FINGERPRINT:Ljava/lang/String; = "com.samsung.settings.REGISTER_FINGERPRINT"

.field private static final TAG:Ljava/lang/String; = "FingerprintApi"


# instance fields
.field private mImplementation:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/IFingerprintApi;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;->OS_DEPENDENT:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->initImpl(Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->initImpl(Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;)V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->lambda$registerFingerprint$0()V

    return-void
.end method

.method private getFingerprintUniqueId(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->mImplementation:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/IFingerprintApi;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/IFingerprintApi;->getFingerprintId(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method private initImpl(Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;->OS_DEPENDENT:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;

    if-ne p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/BiometricPromptImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/BiometricPromptImpl;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;-><init>()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;->BIOMETRIC_PROMPT:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/BiometricPromptImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/BiometricPromptImpl;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->mImplementation:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/IFingerprintApi;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;->FINGERPRINT_MANAGER:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;

    if-ne p1, v0, :cond_3

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;-><init>()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private static synthetic lambda$registerFingerprint$0()V
    .locals 2

    const-string v0, "FingerprintApi"

    const-string v1, "startRegisterFingerprint# onFinish"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "FingerprintApi"

    const-string p2, "context is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->mImplementation:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/IFingerprintApi;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/IFingerprintApi;->authenticate(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;)V

    return-void
.end method

.method public cancelAuthenticate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->mImplementation:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/IFingerprintApi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/IFingerprintApi;->cancelAuthenticate()V

    :cond_0
    return-void
.end method

.method public enableFingerprint(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefFingerprintChanged(Landroid/content/Context;Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->getFingerprintUniqueId(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefFingerprintUniqueId(Landroid/content/Context;Ljava/util/Set;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefUseFingerprint(Landroid/content/Context;Z)V

    return-void
.end method

.method public hasChangedFingerprint(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->mImplementation:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/IFingerprintApi;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/IFingerprintApi;->hasChangedFingerprint(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public hasEnrolledFingerprint(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDeviceAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isUsingFingerprintManager()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->mImplementation:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/IFingerprintApi;

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;

    return v0
.end method

.method public registerFingerprint(Landroid/content/Context;)V
    .locals 2

    const-string v0, "FingerprintApi"

    const-string v1, "startRegisterFingerprint"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.REGISTER_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->isSensorReady()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/b;->a:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/b;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->registerFinger(Landroid/content/Context;Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_fingerprint_dialog_sensor_error_title:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method
