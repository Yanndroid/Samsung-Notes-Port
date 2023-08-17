.class public Landroidx/biometric/DeviceCredentialHandlerBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final IGNORING_NEXT_RESET:I = 0x1

.field private static final IGNORING_RESET:I = 0x2

.field private static final NOT_IGNORING_RESET:I = 0x0

.field public static final RESULT_ERROR:I = 0x2

.field public static final RESULT_NONE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field private static sInstance:Landroidx/biometric/DeviceCredentialHandlerBridge;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mBiometricFragment:Landroidx/biometric/BiometricFragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mClientThemeResId:I

.field private mConfirmingDeviceCredential:Z

.field private mDeviceCredentialResult:I

.field private mExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIgnoreResetState:I

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mDeviceCredentialResult:I

    iput v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mIgnoreResetState:I

    return-void
.end method

.method public static getInstance()Landroidx/biometric/DeviceCredentialHandlerBridge;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Landroidx/biometric/DeviceCredentialHandlerBridge;->sInstance:Landroidx/biometric/DeviceCredentialHandlerBridge;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/biometric/DeviceCredentialHandlerBridge;

    invoke-direct {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;-><init>()V

    sput-object v0, Landroidx/biometric/DeviceCredentialHandlerBridge;->sInstance:Landroidx/biometric/DeviceCredentialHandlerBridge;

    :cond_0
    sget-object v0, Landroidx/biometric/DeviceCredentialHandlerBridge;->sInstance:Landroidx/biometric/DeviceCredentialHandlerBridge;

    return-object v0
.end method

.method public static getInstanceIfNotNull()Landroidx/biometric/DeviceCredentialHandlerBridge;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Landroidx/biometric/DeviceCredentialHandlerBridge;->sInstance:Landroidx/biometric/DeviceCredentialHandlerBridge;

    return-object v0
.end method


# virtual methods
.method public getAuthenticationCallback()Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    return-object v0
.end method

.method public getBiometricFragment()Landroidx/biometric/BiometricFragment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    return-object v0
.end method

.method public getClientThemeResId()I
    .locals 1

    iget v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mClientThemeResId:I

    return v0
.end method

.method public getDeviceCredentialResult()I
    .locals 1

    iget v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mDeviceCredentialResult:I

    return v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getFingerprintDialogFragment()Landroidx/biometric/FingerprintDialogFragment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    return-object v0
.end method

.method public getFingerprintHelperFragment()Landroidx/biometric/FingerprintHelperFragment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    return-object v0
.end method

.method public getOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public ignoreNextReset()V
    .locals 1

    iget v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mIgnoreResetState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mIgnoreResetState:I

    :cond_0
    return-void
.end method

.method public isConfirmingDeviceCredential()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mConfirmingDeviceCredential:Z

    return v0
.end method

.method public reset()V
    .locals 2

    iget v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mIgnoreResetState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->stopIgnoringReset()V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mClientThemeResId:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    iput-object v1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    iput-object v1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    iput-object v1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    iput v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mDeviceCredentialResult:I

    iput-boolean v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mConfirmingDeviceCredential:Z

    sput-object v1, Landroidx/biometric/DeviceCredentialHandlerBridge;->sInstance:Landroidx/biometric/DeviceCredentialHandlerBridge;

    return-void
.end method

.method public setBiometricFragment(Landroidx/biometric/BiometricFragment;)V
    .locals 0
    .param p1    # Landroidx/biometric/BiometricFragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    return-void
.end method

.method public setCallbacks(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    iput-object p1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/biometric/BiometricFragment;->setCallbacks(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Landroidx/biometric/FingerprintDialogFragment;->setNegativeButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p2, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    invoke-virtual {p2, p1, p3}, Landroidx/biometric/FingerprintHelperFragment;->setCallback(Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    iget-object p1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    iget-object p2, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {p2}, Landroidx/biometric/FingerprintDialogFragment;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/biometric/FingerprintHelperFragment;->setHandler(Landroid/os/Handler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setClientThemeResId(I)V
    .locals 0

    iput p1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mClientThemeResId:I

    return-void
.end method

.method public setConfirmingDeviceCredential(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mConfirmingDeviceCredential:Z

    return-void
.end method

.method public setDeviceCredentialResult(I)V
    .locals 0

    iput p1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mDeviceCredentialResult:I

    return-void
.end method

.method public setFingerprintFragments(Landroidx/biometric/FingerprintDialogFragment;Landroidx/biometric/FingerprintHelperFragment;)V
    .locals 0
    .param p1    # Landroidx/biometric/FingerprintDialogFragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/biometric/FingerprintHelperFragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    iput-object p2, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    return-void
.end method

.method public startIgnoringReset()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mIgnoreResetState:I

    return-void
.end method

.method public stopIgnoringReset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mIgnoreResetState:I

    return-void
.end method
