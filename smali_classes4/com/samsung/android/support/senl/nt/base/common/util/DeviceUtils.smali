.class public Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEVICE_RAM_LEVEL_HIGH:I = 0x2

.field private static final DEVICE_RAM_LEVEL_HIGH_THRESHOLD:D = 3.700000047683716

.field public static final DEVICE_RAM_LEVEL_LOW:I = 0x0

.field private static final DEVICE_RAM_LEVEL_LOW_THRESHOLD:D = 2.5

.field public static final DEVICE_RAM_LEVEL_MID:I = 0x1

.field private static final PKG_SEP_SHA_HASH:Ljava/lang/String; = "9CA5170F381919DFE0446FCDAB18B19A143B3163"

.field private static final SCREEN_SIZE_FULL_HD:I = 0x1fa400

.field private static final TAG:Ljava/lang/String; = "DeviceUtils"

.field private static mIsSepMainSignature:Ljava/lang/Boolean; = null

.field private static mIsShopDemoDevice:I = -0x1

.field private static mIsSpenModel:I = -0x1

.field public static sMemoryLevel:Ljava/lang/Integer;

.field private static sRamSizeKb:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceMemoryLevel()I
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->sMemoryLevel:Ljava/lang/Integer;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->getTotalRamSizeKb()J

    move-result-wide v0

    long-to-int v0, v0

    shr-int/lit8 v0, v0, 0x14

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->getScreenResolution()D

    move-result-wide v1

    const-wide v3, 0x413fa40000000000L    # 2073600.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v1

    int-to-double v3, v0

    div-double/2addr v3, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MEM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "GB  / "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceUtils"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v5, 0x400d9999a0000000L    # 3.700000047683716

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->sMemoryLevel:Ljava/lang/Integer;

    goto :goto_3

    :cond_0
    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    cmpl-double v0, v3, v5

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isForcedMIDLevelDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Memory Level = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->sMemoryLevel:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->sMemoryLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_name"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static getDeviceSyncError(Landroid/content/Context;)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isNationalDisasterNet()Z

    move-result v0

    const-string v1, "DeviceUtils"

    if-eqz v0, :cond_0

    const-string p0, "getDeviceSyncError : false <- National disaster net!"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x1000

    return p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedAccount(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "getDeviceSyncError : false <- No account package!"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x80

    return p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isUnpackDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "getDeviceSyncError : false <- Unpack device!"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x2000

    return p0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->isRDUModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "getDeviceSyncError : false <- RDU device!"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x4000

    return p0

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isKnoxMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "getDeviceSyncError : false <- Knox Mode!"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x8000

    return p0

    :cond_4
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isPowerManageMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "getDeviceSyncError : false <- Power Manage Mode!"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, 0x20000

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public static getEncodedDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->encodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unknown"

    :goto_0
    return-object p0
.end method

.method private static getScreenResolution()D
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->getMainScreenResolution()I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->getMainScreenResolution()I

    move-result v0

    int-to-double v0, v0

    :cond_0
    return-wide v0
.end method

.method public static getSubModelName()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getFactoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTotalRamSizeKb()J
    .locals 4

    sget-wide v0, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->sRamSizeKb:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const/16 v2, 0xa

    shr-long/2addr v0, v2

    sput-wide v0, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->sRamSizeKb:J

    return-wide v0
.end method

.method public static isDemoDevice(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isUnpackDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isShopDemoDevice(Landroid/content/Context;)Z

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

.method public static isFoldableModel()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isForcedMIDLevelDevice()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->getSubModelName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T73"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNewSepLiteModel()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isNewSepLiteModel()Z

    move-result v0

    return v0
.end method

.method public static isPhoneModel()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getDeviceType()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;->phone:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPowerManageMode(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->isUPSM(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string p0, "DeviceUtils"

    const-string v0, "Power manage mode enabled!"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static isRamSizeBelowOf(I)Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->getTotalRamSizeKb()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v0, v0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSepLiteModel(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isSepLiteModel(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSepMainSignature(Landroid/content/Context;)Z
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->mIsSepMainSignature:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "DeviceUtils"

    if-nez p0, :cond_1

    const-string p0, "isSepMainSigning() : appContext is null!"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x40

    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_3

    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    const-string v5, "SHA"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/cm/base/common/util/ConvertUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "9CA5170F381919DFE0446FCDAB18B19A143B3163"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->mIsSepMainSignature:Ljava/lang/Boolean;

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->mIsSepMainSignature:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIGNATURE ERROR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v0
.end method

.method public static isSepModel(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isSepModel(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isShopDemoDevice(Landroid/content/Context;)Z
    .locals 4

    sget v0, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->mIsShopDemoDevice:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->isRDUModel(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    sput p0, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->mIsShopDemoDevice:I

    :cond_2
    sget p0, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->mIsShopDemoDevice:I

    if-ne p0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public static isSpenModel()Z
    .locals 5

    sget v0, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->mIsSpenModel:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/Spen;->isFeatureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput v0, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->mIsSpenModel:I

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->mIsSpenModel:I

    if-ne v0, v3, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public static isSupportedAccount(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isOtherCorpDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->hasSamsungAccountPackage(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedFileProvider()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isVSTModel()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getSemPlatformVersionInt(I)I

    move-result v2

    const v3, 0x13a74

    if-lt v2, v3, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static isSupportedHandWritingRecognition(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSpenModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isPowerManageMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "DeviceUtils"

    const-string v0, "HandWritingRecognition is not supported!"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportedLock(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isDemoDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedAccount(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedScreenOn(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexDualModeConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexTouchpadEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "DeviceUtils"

    const-string v0, "ScreenOn is not supported!"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportedSetLockPassword(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedLock(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSupportedSync(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->getDeviceSyncError(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTabletModel()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getDeviceType()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;->tablet:Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat$DeviceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUnpackDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static resetDeviceMemoryLevel()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->sMemoryLevel:Ljava/lang/Integer;

    return-void
.end method

.method public static verifySignatureNoHash(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "DeviceUtils"

    if-nez p0, :cond_1

    const-string p0, "isSepMainSigning() : appContext is null!"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_4

    array-length p1, p0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1
.end method
