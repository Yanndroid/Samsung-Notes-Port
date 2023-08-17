.class public Lcom/sec/android/diagmonagent/common/util/CommonUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DMA_PKG_NAME:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final NO_EXIST:I

.field private static PKG_VERSION:Ljava/lang/String;

.field private static SERVICE_PKG_INFO:Landroid/content/pm/PackageInfo;


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

.method public static getDMAVersion(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.sec.android.diagmonagent"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "DMA Client is not exist"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    return v0
.end method

.method public static getPackageVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->PKG_VERSION:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getServicePkgInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    sput-object p0, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->PKG_VERSION:Ljava/lang/String;

    :cond_1
    sget-object p0, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->PKG_VERSION:Ljava/lang/String;

    return-object p0
.end method

.method public static getServicePkgInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    sget-object v0, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->SERVICE_PKG_INFO:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v1, 0x1000

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    sput-object p0, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->SERVICE_PKG_INFO:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not found"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->SERVICE_PKG_INFO:Landroid/content/pm/PackageInfo;

    return-object p0
.end method
