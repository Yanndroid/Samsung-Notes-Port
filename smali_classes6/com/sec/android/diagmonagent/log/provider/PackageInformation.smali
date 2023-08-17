.class public Lcom/sec/android/diagmonagent/log/provider/PackageInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PRE_ID:Ljava/lang/String; = "TWID:"

.field private static final SERIAL_NO:Ljava/lang/String; = "ro.serialno"

.field private static final TAG_DEVICEINFO:Ljava/lang/String; = "deviceInfo"

.field private static final TAG_SERVICECLIENT_VERSION:Ljava/lang/String; = "serviceClientVer"

.field public static instance:Lcom/sec/android/diagmonagent/log/provider/PackageInformation;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/diagmonagent/log/provider/PackageInformation;

    invoke-direct {v0}, Lcom/sec/android/diagmonagent/log/provider/PackageInformation;-><init>()V

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/PackageInformation;->instance:Lcom/sec/android/diagmonagent/log/provider/PackageInformation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerialNo()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getTWID()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/PackageInformation;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TWID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDeviceInfoBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "deviceInfo"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "serviceClientVer"

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/PackageInformation;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-object v1
.end method

.method public getPackageVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string p1, "unknown"

    return-object p1
.end method
