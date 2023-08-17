.class Lcom/samsung/android/support/senl/cm/base/framework/sem/display/DisplayDeviceTypeImplFactory$DisplayDeviceSemPosCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory$IDisplayDeviceTypeImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/display/DisplayDeviceTypeImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayDeviceSemPosCompat"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/display/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/display/DisplayDeviceTypeImplFactory$DisplayDeviceSemPosCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayDeviceType(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/display/DisplayDeviceTypeImplFactory$DisplayDeviceSemPosCompat;->getDisplayDeviceType(Landroid/content/res/Configuration;)I

    move-result p1

    return p1
.end method

.method public getDisplayDeviceType(Landroid/content/res/Configuration;)I
    .locals 1

    :try_start_0
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchFieldError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DisplayDeviceTypeCompat"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public isMainDisplay(Landroid/content/res/Configuration;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/display/DisplayDeviceTypeImplFactory$DisplayDeviceSemPosCompat;->getDisplayDeviceType(Landroid/content/res/Configuration;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSubDisplay(Landroid/content/res/Configuration;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/display/DisplayDeviceTypeImplFactory$DisplayDeviceSemPosCompat;->getDisplayDeviceType(Landroid/content/res/Configuration;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
