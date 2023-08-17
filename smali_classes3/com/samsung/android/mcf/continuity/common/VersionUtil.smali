.class public Lcom/samsung/android/mcf/continuity/common/VersionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MASK_SDK_REVISION:I = 0x3e8

.field private static final MASK_SERVICE_BRANCH_AND_FLAVOR:I = 0x186a0

.field public static final PACKAGE_NAME_MCF_CONTINUITY:Ljava/lang/String; = "com.samsung.android.mcfds"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SUPPORT_BT_SESSION:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SUPPORT_WIFI_P2P_SESSION:I = 0x4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SUPPORT_WIFI_SESSION:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VersionUtil"

.field private static final VERSION_CODE_SUPPORT_BT_SESSION:I = 0x44c

.field private static final VERSION_CODE_SUPPORT_WIFI_SESSION:I = 0x4b0

.field private static mServiceSupportFeatures:I = -0x1


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

.method public static getFeatureFlag(I)I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x1

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSDKVersionCode()I
    .locals 1

    const v0, 0x10c8f5

    return v0
.end method

.method public static getServiceVersionCode(Landroid/content/Context;)J
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v0, "com.samsung.android.mcfds"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NameNotFoundException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VersionUtil"

    const-string v1, "getServiceVersionCode"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static hasFeature(II)Z
    .locals 0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static initServiceSupportFeatures(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->getServiceVersionCode(Landroid/content/Context;)J

    move-result-wide v0

    const/4 p0, 0x0

    sput p0, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->mServiceSupportFeatures:I

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/32 v2, 0x186a0

    div-long v2, v0, v2

    long-to-int p0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abovePatchVersionCode - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VersionUtil"

    const-string v4, "initSupportFeatures"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x44c

    invoke-static {p0, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->hasFeature(II)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->mServiceSupportFeatures:I

    or-int/lit8 v2, v2, 0x1

    sput v2, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->mServiceSupportFeatures:I

    :cond_1
    const/16 v2, 0x4b0

    invoke-static {p0, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->hasFeature(II)Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->mServiceSupportFeatures:I

    or-int/lit8 p0, p0, 0x2

    sput p0, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->mServiceSupportFeatures:I

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceVersionCode - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mSupportFeatures - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->mServiceSupportFeatures:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v4, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isNetworkTypeSupported(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isSDKSupportNetworkType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isServiceSupportNetworkType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSDKSupportFeatureFlag(II)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/16 v0, 0x44c

    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->hasFeature(II)Z

    move-result v0

    const/16 v1, 0x4b0

    invoke-static {p0, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->hasFeature(II)Z

    move-result p0

    if-eqz p0, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    and-int p0, v0, p1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSDKSupportNetworkType(I)Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->getSDKVersionCode()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abovePatchVersionCode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VersionUtil"

    const-string v3, "isSDKSupportFeature"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->getFeatureFlag(I)I

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isSDKSupportFeatureFlag(II)Z

    move-result p0

    return p0
.end method

.method public static isServiceSupportAppId(I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isServiceSupportFeature(I)Z

    move-result p0

    return p0
.end method

.method private static isServiceSupportFeature(I)Z
    .locals 3

    sget v0, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->mServiceSupportFeatures:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isServiceSupportNetworkType(I)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->getFeatureFlag(I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isServiceSupportFeature(I)Z

    move-result p0

    return p0
.end method
