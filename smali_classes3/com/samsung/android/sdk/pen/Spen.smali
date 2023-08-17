.class public Lcom/samsung/android/sdk/pen/Spen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/SsdkInterface;


# static fields
.field public static final BUILD_HME:Z = false

.field private static final DEFAULT_MAX_CACHE_SIZE:I = 0x5

.field public static final DEVICE_PEN:I = 0x0

.field public static IS_SPEN_PRELOAD_MODE:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SpenSdk"

.field public static final POINTER_ICON:I = 0x1

.field private static final SPEN_APP_LIB_MODE:I = 0x2

.field public static final SPEN_NATIVE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.sdk.spen30"

.field private static final SPEN_NATIVE_PACKAGE_NAME_64BIT:Ljava/lang/String; = "com.samsung.android.sdk.spen30_64"

.field private static final SPEN_NATIVE_PACKAGE_NAME_PRELOAD:Ljava/lang/String; = "com.samsung.android.sdk.spenv10"

.field public static final SPEN_STATIC_LIB_MODE:I = 0x1

.field public static final TEXT_RECOGNIZER:I = 0x2

.field private static final VERSION:Ljava/lang/String; = "7.0.0"

.field private static final VERSION_LEVEL:I = 0x1

.field private static mIsInitialized:Z = false

.field private static mSpenPackageName:Ljava/lang/String; = "com.samsung.android.sdk.spen30"

.field private static os:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCreateMode:I


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

.method private static native SPenSdk_OSType()I
.end method

.method private static native SPenSdk_init(Ljava/lang/String;II)Z
.end method

.method private static native SPenSdk_init2(Ljava/lang/String;III)Z
.end method

.method private static native SPenSdk_setScreenDensity(F)V
.end method

.method private static native SPenSdk_trimCache(Ljava/lang/String;I)Z
.end method

.method public static getSpenPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/Spen;->mSpenPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static hasPenFeature(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "SpenSdk"

    const-string v1, "hasPenFeature - invalid argument"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v2, v3}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_1

    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v2, "org.chromium.arc"

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "org.chromium.arc.device_management"

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    :goto_0
    return v1

    :cond_4
    return v0
.end method

.method private insertLog(Landroid/content/Context;)V
    .locals 5

    const-string v0, "com.samsung.android.providers.context"

    const-string v1, "SpenSdk"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Could not find ContextProvider"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "versionCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const-string v2, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, " com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY is not allowed "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    const-string v3, "initialize"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string p1, "Add com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isLoadedSpen(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isPenInboxed(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "SpenSdk"

    if-nez p0, :cond_0

    const-string p0, "isPenInboxed - invalid argument"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/PackageManagerWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/PackageManagerWrapper;

    move-result-object p0

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {p0, v2}, Lcom/samsung/android/spen/libwrapper/PackageManagerWrapper;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemFeatureLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    rem-int/lit8 p0, p0, 0xa
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method private isPointerIconEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/sdk/pen/Spen;->mIsInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/Spen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->isPointerIconSupported()Z

    move-result v0
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static isTextRecognizerEnabled(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/pen/Spen;->mIsInitialized:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isTextRecognizerAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static osType()I
    .locals 2

    sget v0, Lcom/samsung/android/sdk/pen/Spen;->os:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->SPenSdk_OSType()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/Spen;->os:I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "SpenSdk"

    const-string v1, "osType - old so"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x20

    sput v0, Lcom/samsung/android/sdk/pen/Spen;->os:I

    return v0
.end method

.method private printVersion(Landroid/content/Context;)V
    .locals 6

    const-string v0, "SpenSdk"

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    :try_start_0
    const-string v1, "PEN_SDK_CHANGELIST"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpenSdk native version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenSdk it is not created by jenkins : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static trimCache(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "SpenSdk"

    if-nez p0, :cond_0

    const-string/jumbo p0, "trimCache() - context can not be null."

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v1, Lcom/samsung/android/sdk/pen/Spen;->mIsInitialized:Z

    if-nez v1, :cond_1

    const-string/jumbo p0, "trimCache() - SPen is not initialized."

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/Spen;->SPenSdk_trimCache(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fail to trim SDK Cache directory."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public SPEN_SDK_4_0_0(I)I
    .locals 1

    mul-int v0, p1, p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "7.0.0"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/Spen;->initialize(Landroid/content/Context;IIZLjava/lang/String;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/Spen;->initialize(Landroid/content/Context;IIZLjava/lang/String;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;II)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/Spen;->initialize(Landroid/content/Context;IIZLjava/lang/String;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;IIZ)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/Spen;->initialize(Landroid/content/Context;IIZLjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized initialize(Landroid/content/Context;IIZLjava/lang/String;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string p4, "SpenSdk"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenSdk version level = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p4, "SpenSdk"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenSdk jar version = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_d

    const-string p4, "SpenSdk"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Client package name = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/Spen;->printVersion(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/Spen;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/android/sdk/pen/Spen;->mCreateMode:I

    const/4 p4, 0x1

    if-eq p3, p4, :cond_0

    const-string p1, "SpenSdk"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SpenSdk use mode : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ". Skip!!!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p3, "SpenSdk"

    const-string p5, "SpenSdk use static library"

    invoke-static {p3, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p3, Lcom/samsung/android/sdk/pen/Spen;->mIsInitialized:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/Spen;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    sput-object p3, Lcom/samsung/android/sdk/pen/Spen;->mSpenPackageName:Ljava/lang/String;

    :cond_1
    const-string p3, "SpenSdk"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSpenPackageName : "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/sdk/pen/Spen;->mSpenPackageName:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/Spen;->insertLog(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p5

    if-nez p5, :cond_3

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result p5

    if-eqz p5, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "SpenSdk"

    const-string p2, "Cannot create application files directory"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot create application directory."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const-string/jumbo p5, "window"

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/WindowManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-interface {p5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    invoke-interface {p5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const-class v1, Landroid/view/Display;

    const-string v2, "getRawWidth"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-class v2, Landroid/view/Display;

    const-string v4, "getRawHeight"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_4
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-interface {p5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I
    :try_end_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_2
    :try_start_5
    invoke-interface {p5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    :goto_1
    sget-boolean v2, Lcom/samsung/android/sdk/pen/Spen;->mIsInitialized:Z

    if-eqz v2, :cond_5

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v0, p2}, Lcom/samsung/android/sdk/pen/Spen;->SPenSdk_init2(Ljava/lang/String;III)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "SpenSdk"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Spen OS type = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SpenSdk"

    const-string p2, "initialize complete"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SDK Cache directory is not initialized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string v2, "c++_shared"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "SPenZlib"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "SPenLibpng"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "SPenLibjpeg"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "SPenLibgif"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "SPenUuid"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "SPenSkia"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "SPenLibxml2"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "SPenBase"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "SPenPluginFW"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "SPenModel"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "SPenRenderer"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "SPenGraphics"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "SPenEngine"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "SPenInit"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "SPenPaintingCompat"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "SPenContent"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v2, "SPenView"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v2, "SPenText"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v2, "SPenObjectControl"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v2, "SPenDrawing"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v2, "SPenWidget"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v2, "SPenRecogUIFeature"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v2, "SPenComposer"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v2, "SPenBodytext"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v2, "SPenSDoc"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v2, "SPenWDoc"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v2, "SPenXmlSerializer"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v2, "SPenWordDocCoedit"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v2, "SPenPenCommon"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v2, "SPenRecognizerShape"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->loadLibrary(Ljava/lang/String;)Z

    const-string v2, "SpenSdk"

    const-string v3, "SpenSdk Libraries are loaded."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1, v0, p2}, Lcom/samsung/android/sdk/pen/Spen;->SPenSdk_init2(Ljava/lang/String;III)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    new-instance p3, Landroid/util/DisplayMetrics;

    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p2, p3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/Spen;->SPenSdk_setScreenDensity(F)V

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/Recognizer;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->setPenAntiAliasEnabled()V

    sput-boolean p4, Lcom/samsung/android/sdk/pen/Spen;->mIsInitialized:Z

    const-string p1, "SpenSdk"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Spen OS type = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SpenSdk"

    const-string p2, "initialize complete"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SDK Cache directory is not initialized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Libxml2 is not loaded!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "skia is not loaded!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "base libraries is not loaded!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "c++_shared is not loaded!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const-string p1, "SpenSdk"

    const-string p2, "Cannot get the path of the directory holding application files."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot get the path of the directory holding application files."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context is invalid."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isFeatureEnabled(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/Spen;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/Spen;->isTextRecognizerEnabled(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/Spen;->isPointerIconEnabled()Z

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/Spen;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/Spen;->hasPenFeature(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_3
    new-instance p1, Ljava/io/File;

    const-string v1, "/sys/class/sec/sec_epen"

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public loadLibrary(Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/Spen;->mCreateMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    return v1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/sdk/pen/Spen;->mSpenPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/lib/lib"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".so"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-ne p1, v2, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v1
.end method
