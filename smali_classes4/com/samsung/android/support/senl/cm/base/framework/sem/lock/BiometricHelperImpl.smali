.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/BiometricHelperImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_DEVICE_CUSTOM_SCAN:I = 0x8

.field public static final TYPE_FACE:I = 0x2

.field public static final TYPE_FINGERPRINT:I = 0x1

.field public static final TYPE_IRIS:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBiometricType(Landroid/hardware/biometrics/BiometricPrompt$Builder;I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetBiometricType(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p0

    return-object p0
.end method
