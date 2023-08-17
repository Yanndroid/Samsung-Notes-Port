.class public Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;,
        Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Biometrics$IrisApi"


# instance fields
.field private mImpl:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IIrisApiImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;->OS_DEPENDENT:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->initImpl(Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->initImpl(Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;)V

    return-void
.end method

.method private getIrisId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->mImpl:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IIrisApiImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IIrisApiImpl;->getIrisId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hasChangedIrisO(Landroid/content/Context;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->mImpl:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IIrisApiImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IIrisApiImpl;->getIrisId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Biometrics$IrisApi"

    if-nez v0, :cond_0

    const-string p1, "compareIrisUniqueID : getIrisId is null"

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefIrisUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p1, "compareIrisUniqueID : OriginalUniqueID is null"

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefIrisUniqueId(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "compareIrisUniqueID : match"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    const-string p1, "compareIrisUniqueID : not match"

    goto :goto_0
.end method

.method private hasChangedIrisP(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefIrisChanged(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefIrisChanged(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "Biometrics$IrisApi"

    const-string v0, "hasChangedIrisP : false"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private initImpl(Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;->OS_DEPENDENT:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    if-ne p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisBiometricPromptImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisBiometricPromptImpl;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl;-><init>()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;->BIOMETRIC_PROMPT:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisBiometricPromptImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisBiometricPromptImpl;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->mImpl:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IIrisApiImpl;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;->IRIS_MANAGER:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    if-ne p1, v0, :cond_3

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl;-><init>()V

    goto :goto_0

    :cond_3
    const-string p1, "Biometrics$IrisApi"

    const-string v0, "type error"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;)V
    .locals 1
    .param p3    # Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->mImpl:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IIrisApiImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IIrisApiImpl;->authenticate(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;)V

    return-void
.end method

.method public cancelAuthenticate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->mImpl:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IIrisApiImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IIrisApiImpl;->cancelAuthenticate()V

    return-void
.end method

.method public enableIris(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefIrisChanged(Landroid/content/Context;Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->getIrisId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefIrisUniqueId(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefUseIris(Landroid/content/Context;Z)V

    return-void
.end method

.method public hasChangedIris(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->hasChangedIrisP(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->hasChangedIrisO(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public hasEnrolledIris(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isPowerManageMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Biometrics$IrisApi"

    if-nez v0, :cond_2

    const-string v0, "com.samsung.android.camera.iris.permission.USE_IRIS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->getSIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/sdk/iris/SIrisManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->hasEnrolledIrises()Z

    move-result v1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hasEnrolledIris "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    :goto_1
    const-string p1, "hasEnrolledIris : not supported"

    goto :goto_0
.end method

.method public isDeviceAvailable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->getSIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/sdk/iris/SIrisManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->isHardwareDetected()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isRetryCase(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->mImpl:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IIrisApiImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IIrisApiImpl;->isRetryCase(I)Z

    move-result p1

    return p1
.end method

.method public isUsingIrisManager()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->mImpl:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IIrisApiImpl;

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl;

    return v0
.end method
