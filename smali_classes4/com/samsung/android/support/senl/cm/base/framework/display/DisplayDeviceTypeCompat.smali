.class public Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DISPLAY_DEVICE_TYPE_MAIN:I = 0x0

.field public static DISPLAY_DEVICE_TYPE_NONE:I = -0x1

.field public static DISPLAY_DEVICE_TYPE_SUB:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DisplayDeviceTypeCompat"

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;


# instance fields
.field private mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory$IDisplayDeviceTypeImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory$IDisplayDeviceTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory$IDisplayDeviceTypeImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/display/DisplayDeviceTypeImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/display/DisplayDeviceTypeImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isSemDevice()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/display/DisplayDeviceTypeImplFactory;->create(Z)Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory$IDisplayDeviceTypeImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory$IDisplayDeviceTypeImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getDisplayDeviceType(Landroid/content/Context;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory$IDisplayDeviceTypeImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory$IDisplayDeviceTypeImpl;->getDisplayDeviceType(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getDisplayDeviceType(Landroid/content/res/Configuration;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory$IDisplayDeviceTypeImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory$IDisplayDeviceTypeImpl;->getDisplayDeviceType(Landroid/content/res/Configuration;)I

    move-result p1

    return p1
.end method

.method public isMainDisplay(Landroid/content/res/Configuration;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory$IDisplayDeviceTypeImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory$IDisplayDeviceTypeImpl;->isSubDisplay(Landroid/content/res/Configuration;)Z

    move-result p1

    return p1
.end method

.method public isSubDisplay(Landroid/content/res/Configuration;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory$IDisplayDeviceTypeImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory$IDisplayDeviceTypeImpl;->isSubDisplay(Landroid/content/res/Configuration;)Z

    move-result p1

    return p1
.end method
