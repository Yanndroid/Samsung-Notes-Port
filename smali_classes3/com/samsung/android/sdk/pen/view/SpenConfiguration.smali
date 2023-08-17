.class public Lcom/samsung/android/sdk/pen/view/SpenConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEVICE_TYPE_FOLD:I = 0x2

.field public static final DEVICE_TYPE_PHONE:I = 0x0

.field public static final DEVICE_TYPE_TABLET:I = 0x1

.field public static final DEVICE_UX_TYPE_PHONE:I = 0x0

.field public static final DEVICE_UX_TYPE_TABLET:I = 0x1

.field public static final DEX_MODE_DUAL:I = 0x1

.field public static final DEX_MODE_NONE:I = 0x0

.field public static final DEX_MODE_STANDALONE:I = 0x2

.field private static final FOLD_DEVICE_FEATURE_Q:Ljava/lang/String; = "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_WM_CONTROLS_DISPLAY_SWITCH"

.field private static final FOLD_DEVICE_FEATURE_R_UP:Ljava/lang/String; = "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

.field private static final R_OS_VERSION_CODES:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "SpenConfiguration"


# instance fields
.field public deviceType:I

.field public deviceUXType:I

.field public dexMode:I

.field private mNativeHandle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->mNativeHandle:J

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isTabletDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->deviceType:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isFoldDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->deviceType:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->deviceType:I

    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->deviceType:I

    if-eq v0, v3, :cond_3

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->deviceUXType:I

    goto :goto_2

    :cond_3
    :goto_1
    iput v3, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->deviceUXType:I

    :goto_2
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isDexStandAloneMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iput v1, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->dexMode:I

    goto :goto_3

    :cond_4
    iput v3, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->dexMode:I

    goto :goto_3

    :cond_5
    iput v2, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->dexMode:I

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenConfiguration deviceType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->deviceType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", deviceUXType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->deviceUXType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", dexMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->dexMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenConfiguration"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->deviceType:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->deviceUXType:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->dexMode:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->Native_init(III)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->mNativeHandle:J

    return-void
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init(III)J
.end method

.method public static isDesktopMode(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/DesktopModeManagerWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/DesktopModeManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/spen/libwrapper/DesktopModeManagerWrapper;->isDesktopMode()Z

    move-result p0
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p0, v0

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isDexDualMode(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "SpenConfiguration"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x19

    if-lt v1, v3, :cond_2

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->getEnabled()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->getEnabledConstant()I

    move-result v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->getDisplayType()I

    move-result v3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->getDisplayTypeDualConstant()I

    move-result p0

    if-ne v3, p0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDexDualMode: isEnabled="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDualMode="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDexDualMode exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method public static isDexStandAloneMode(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "SpenConfiguration"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x19

    if-lt v1, v3, :cond_2

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->getEnabled()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->getEnabledConstant()I

    move-result v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->getDisplayType()I

    move-result v3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/spen/libwrapper/DesktopModeStateWrapper;->getDisplayTypeStandaloneConstant()I

    move-result p0

    if-ne v3, p0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDexStandAloneMode: isEnabled="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isStandaloneMode="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDexStandAloneMode exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method public static isFoldDevice(Landroid/content/Context;)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    goto :goto_0

    :cond_0
    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_WM_CONTROLS_DISPLAY_SWITCH"

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x7

    if-lt v0, v3, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x46

    if-eq v0, v3, :cond_2

    const/16 v3, 0x57

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "W20"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_2
    const-string v0, "F90"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "F91"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "F92"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "F93"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :cond_4
    :goto_2
    return v1
.end method

.method public static isMainDisplay(Landroid/content/res/Configuration;)Z
    .locals 0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSubDisplay(Landroid/content/res/Configuration;)Z
    .locals 1

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSystemDarkMode(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTabletDevice(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/SystemPropertiesWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/SystemPropertiesWrapper;

    move-result-object p0

    const-string v1, "ro.build.characteristics"

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libwrapper/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "SpenConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTabletModel, buildCharacteristics : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "tablet"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static isTabletUX(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isTabletDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isFoldDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->Native_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->mNativeHandle:J

    :cond_0
    return-void
.end method

.method public getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->mNativeHandle:J

    return-wide v0
.end method
