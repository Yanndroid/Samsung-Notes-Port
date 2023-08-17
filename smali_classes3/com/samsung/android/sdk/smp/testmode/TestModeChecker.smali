.class public Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "aid"

.field private static final DIGEST_ALGORITHM:Ljava/lang/String; = "SHA"

.field private static final NOT_TEST_MODE:I = 0x0

.field private static final SIGNATURE_APPLICATION:[B

.field private static final SMP_TEST_REGISTER_PACKAGE:Ljava/lang/String; = "com.samsung.android.smp.register"

.field private static final TAG:Ljava/lang/String; = "TestModeChecker"

.field private static final TEST_MODE:I = 0x2

.field private static final TEST_MODE_BUT_NOT_WRITABLE:I = 0x1

.field private static mNickname:Ljava/lang/String;

.field private static mTestModeChecked:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->SIGNATURE_APPLICATION:[B

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->mTestModeChecked:Z

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->mNickname:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x39t
        0x77t
        0x4dt
        -0x28t
        -0x1et
        -0x1at
        -0x24t
        -0x4et
        0x70t
        -0xdt
        0x76t
        0x79t
        0x15t
        0x4ct
        0x5t
        -0x1ct
        -0x43t
        0x3et
        -0x52t
        0x53t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkModeAndEnableLog(Landroid/content/Context;)I
    .locals 6

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->mTestModeChecked:Z

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isSamsungPushService(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->spsCheckMode(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getInstance()Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->nonSpsCheckMode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getSmpSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    const-string v4, "TestModeChecker"

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p0, v0, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->setSmpLogSetting(Landroid/content/Context;ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Test mode: true, canWrite: true, v:"

    goto :goto_1

    :cond_2
    invoke-static {p0, v0, v5}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->setSmpLogSetting(Landroid/content/Context;ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Test mode: true, canWrite: false, v:"

    goto :goto_1

    :cond_3
    invoke-static {p0, v5, v5}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->setSmpLogSetting(Landroid/content/Context;ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Test mode: false, v:"

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v1
.end method

.method private static checkRegisterAppSignature(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "TestModeChecker"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.samsung.android.smp.register"

    invoke-static {p0, v2}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getSignature(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "error : register app signature is null"

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->he(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->SIGNATURE_APPLICATION:[B

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->digestBytes([B)[B

    move-result-object v4

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "error : register app signature does not match. You may have to update Smp Device Register app to the latest version."

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->he(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->he(Ljava/lang/String;Ljava/lang/String;)V

    :catch_1
    :goto_2
    return v1
.end method

.method private static digestBytes([B)[B
    .locals 1

    :try_start_0
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TestModeChecker"

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDeviceNickname()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->mNickname:Ljava/lang/String;

    return-object v0
.end method

.method public static isTestMode()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->mNickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isTestModeChecked()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->mTestModeChecked:Z

    return v0
.end method

.method private static nonSpsCheckMode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->checkRegisterAppSignature(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "content://com.samsung.android.smp.testreg.provider/testinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "aid"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "devicename"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sput-object v3, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->mNickname:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->isFileLogNotWritable(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return p0

    :cond_2
    const/4 p0, 0x2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return p0

    :cond_3
    :try_start_1
    const-string p0, "TestModeChecker"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not test mode. aid is not matched. test aid: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return v1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0

    :catch_0
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    return v1
.end method

.method private static spsCheckMode(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/spsclient/SpsUtil;->getTestDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sput-object v0, Lcom/samsung/android/sdk/smp/testmode/TestModeChecker;->mNickname:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->isFileLogNotWritable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method
