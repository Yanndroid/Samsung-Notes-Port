.class public Lcom/samsung/scsp/framework/core/util/DeviceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CSC_FIELDS:[Ljava/lang/String;

.field private static final DEFAULT_CC:Ljava/lang/String; = "KOR"

.field private static final DEFAULT_CC_ISO:Ljava/lang/String; = "KO"

.field private static final DEFAULT_CSC:Ljava/lang/String; = ""

.field private static final DEFAULT_MCC:Ljava/lang/String; = ""

.field private static final DEFAULT_MNC:Ljava/lang/String; = ""

.field private static deviceUniqueId:Ljava/lang/String;

.field private static final logger:Lcom/samsung/scsp/error/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "DeviceUtil"

    invoke-static {v0}, Lcom/samsung/scsp/error/Logger;->get(Ljava/lang/String;)Lcom/samsung/scsp/error/Logger;

    move-result-object v0

    sput-object v0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v0, ""

    sput-object v0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->deviceUniqueId:Ljava/lang/String;

    const-string v0, "ro.csc.sales_code"

    const-string v1, "persist.omc.sales_code"

    const-string v2, "ril.sales_code"

    const-string v3, "persist.audio.sales_code"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->CSC_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->lambda$getOneUiVersion$1()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->lambda$getModelCode$4()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->lambda$getIso3CountryCode$5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->lambda$getOneUiVersion$3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->lambda$getOneUiVersion$2()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->lambda$getSystemProperties$6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->lambda$isTablet$0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static getAndroidDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "device_name"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-object v1
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCsc()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->CSC_FIELDS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, ""

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-static {v4, v3}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/scsp/framework/core/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getAndroidDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static getDeviceUniqueId(Landroid/content/Context;Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->deviceUniqueId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/scsp/framework/core/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x42c1d80

    if-eqz p1, :cond_2

    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;->getSerial()Ljava/lang/String;

    move-result-object p0

    :goto_0
    sput-object p0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->deviceUniqueId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/identity/DeviceIdSupplier;->getImei()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    sget-object p0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->deviceUniqueId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->deviceUniqueId:Ljava/lang/String;

    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->deviceUniqueId:Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/scsp/framework/core/ScspException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Runtime policy error. There is an exception while getting device id. {"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->deviceUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Lcom/samsung/scsp/framework/core/ScspException;

    const p1, 0x42c1d82

    const-string v0, "Runtime policy error. Permission is not granted."

    invoke-direct {p0, p1, v0}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/samsung/scsp/framework/core/ScspException;

    const-string p1, "Runtime policy error. DeviceIdSupplier is null."

    invoke-direct {p0, v0, p1}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    sget-object p0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->deviceUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public static getIso3CountryCode()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/scsp/framework/core/util/d;->a:Lcom/samsung/scsp/framework/core/util/d;

    const-string v1, "KOR"

    invoke-static {v0, v1}, Lcom/samsung/scsp/error/FaultBarrier;->get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;)Lcom/samsung/scsp/error/Response;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/error/Response;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getMcc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    sget-object p0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, " : getMcc() : The operator is less than 3."

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/scsp/error/Logger;->e(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, " : getMcc() : The operator is null or empty."

    goto :goto_0
.end method

.method private static getMnc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    sget-object p0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, " : getMnc() : The operator is less than 3."

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/scsp/error/Logger;->e(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, " : getMnc() : The operator is null or empty."

    goto :goto_0
.end method

.method public static getModelCode()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/scsp/framework/core/util/c;->a:Lcom/samsung/scsp/framework/core/util/c;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/samsung/scsp/error/FaultBarrier;->get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;)Lcom/samsung/scsp/error/Response;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/error/Response;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getModelName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkMcc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, " : getNetworkMcc()"

    invoke-virtual {v0, v1}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const-string p0, " : getNetworkMcc() : The telephonyManager is null."

    invoke-virtual {v0, p0}, Lcom/samsung/scsp/error/Logger;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkMnc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, " : getNetworkMnc()"

    invoke-virtual {v0, v1}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const-string p0, " : getNetworkMnc() : The telephonyManager is null."

    invoke-virtual {v0, p0}, Lcom/samsung/scsp/error/Logger;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getMnc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOneUiVersion()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/scsp/framework/core/util/e;->a:Lcom/samsung/scsp/framework/core/util/e;

    const-string v1, "0.0.0"

    invoke-static {v0, v1}, Lcom/samsung/scsp/error/FaultBarrier;->get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;)Lcom/samsung/scsp/error/Response;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/error/Response;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getSDKVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getSimMcc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, " : getSimMcc()"

    invoke-virtual {v0, v1}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const-string p0, " : getSimMcc() : The telephonyManager is null."

    invoke-virtual {v0, p0}, Lcom/samsung/scsp/error/Logger;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSimMnc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, " : getSimMnc()"

    invoke-virtual {v0, v1}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const-string p0, " : getSimMnc() : The telephonyManager is null."

    invoke-virtual {v0, p0}, Lcom/samsung/scsp/error/Logger;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getMnc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/samsung/scsp/framework/core/util/a;

    invoke-direct {v0, p0}, Lcom/samsung/scsp/framework/core/util/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/samsung/scsp/error/FaultBarrier;->get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;)Lcom/samsung/scsp/error/Response;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/scsp/error/Response;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isTablet()Z
    .locals 2

    sget-object v0, Lcom/samsung/scsp/framework/core/util/g;->a:Lcom/samsung/scsp/framework/core/util/g;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/samsung/scsp/error/FaultBarrier;->get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;)Lcom/samsung/scsp/error/Response;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/error/Response;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$getIso3CountryCode$5()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.csc.countryiso_code"

    const-string v1, "KO"

    invoke-static {v0, v1}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const-string v0, "KOR"

    return-object v0
.end method

.method private static synthetic lambda$getModelCode$4()Ljava/lang/String;
    .locals 2

    const-string v0, "ril.product_code"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getOneUiVersion$1()Ljava/lang/Integer;
    .locals 2

    const-string v0, "ro.build.version.oneui"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getOneUiVersion$2()Ljava/lang/Integer;
    .locals 2

    const-string v0, "ro.build.version.sep"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x15f90

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getOneUiVersion$3()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/samsung/scsp/framework/core/util/b;->a:Lcom/samsung/scsp/framework/core/util/b;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/samsung/scsp/error/FaultBarrier;->get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;Z)Lcom/samsung/scsp/error/Response;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/error/Response;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/samsung/scsp/framework/core/util/f;->a:Lcom/samsung/scsp/framework/core/util/f;

    invoke-static {v0, v2, v3}, Lcom/samsung/scsp/error/FaultBarrier;->get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;Z)Lcom/samsung/scsp/error/Response;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/error/Response;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    rem-int/lit8 v0, v1, 0x64

    div-int/lit8 v2, v1, 0x64

    rem-int/lit8 v2, v2, 0x64

    div-int/lit16 v1, v1, 0x2710

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->logger:Lcom/samsung/scsp/error/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "One UI version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$getSystemProperties$6(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "get"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$isTablet$0()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "ro.build.characteristics"

    const-string v1, "phone"

    invoke-static {v0, v1}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
