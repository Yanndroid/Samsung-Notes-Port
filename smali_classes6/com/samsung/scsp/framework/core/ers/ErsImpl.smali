.class Lcom/samsung/scsp/framework/core/ers/ErsImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONFIG_PKG_HASH:Ljava/lang/String; = "03:38:BA:A6:9A:4E:57:0C:58:A6:08:2A:5E:21:B2:A7:B7:FD:16:F4"

.field private static final CONFIG_PKG_NAME:Ljava/lang/String; = "com.samsung.android.scloud.config"

.field private static final CONFIG_SERVER_META_NAME:Ljava/lang/String; = "com.samsung.android.scloud.config.server"

.field private static final ERS_BACKUP_SERVER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERS_MAIN_SERVER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRD:Ljava/lang/String; = "prd"

.field private static final STG:Ljava/lang/String; = "stg"

.field private static final TIMEOUT:I = 0xea60

.field private static url:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final logger:Lcom/samsung/scsp/error/Logger;

.field private final network:Lcom/samsung/scsp/framework/core/network/Network;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->ERS_MAIN_SERVER_MAP:Ljava/util/Map;

    const-string v1, "prd"

    const-string v2, "https://ers.samsungcloud.com/ers/v1/endpoints"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "stg"

    const-string v3, "https://stg-ers.samsungcloud.com/ers/v1/endpoints"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->ERS_BACKUP_SERVER_MAP:Ljava/util/Map;

    const-string v4, "https://ers.samsungcloudplatform.com/ers/v1/endpoints"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ScspErs"

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/scsp/error/Logger;->get(Ljava/lang/String;)Lcom/samsung/scsp/error/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->logger:Lcom/samsung/scsp/error/Logger;

    new-instance v0, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;

    invoke-direct {v0}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->network:Lcom/samsung/scsp/framework/core/network/Network;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->lambda$getMaxAge$3(Ljava/util/List;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/samsung/scsp/framework/core/ers/ErsImpl;)Lcom/samsung/scsp/error/Logger;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->logger:Lcom/samsung/scsp/error/Logger;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/scsp/framework/core/ers/ErsImpl;Ljava/util/Map;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->getMaxAge(Ljava/util/Map;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic b(Lcom/samsung/scsp/framework/core/ers/ErsImpl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->lambda$getDomain$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private byte2HexFormatted([B)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    aget-byte v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-le v4, v2, :cond_1

    add-int/lit8 v6, v4, -0x2

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_2

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic c(Lcom/samsung/scsp/framework/core/ers/ErsImpl;Lcom/samsung/scsp/framework/core/ers/ErsPreferences;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->lambda$getDomain$2(Lcom/samsung/scsp/framework/core/ers/ErsPreferences;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/scsp/framework/core/ers/ErsImpl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->lambda$getDomain$1(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private execute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->getHeaders(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const p2, 0xea60

    invoke-direct {v0, p1, p3, p2}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;-><init>(Ljava/util/Map;Ljava/lang/String;I)V

    const-string p1, "ScspErs"

    invoke-virtual {v0, p1}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->name(Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->build()Lcom/samsung/scsp/framework/core/network/HttpRequest;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->network:Lcom/samsung/scsp/framework/core/network/Network;

    new-instance v0, Lcom/samsung/scsp/framework/core/DefaultErrorListener;

    invoke-direct {v0, p1}, Lcom/samsung/scsp/framework/core/DefaultErrorListener;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/scsp/framework/core/ers/ErsImpl$1;

    invoke-direct {p1, p0}, Lcom/samsung/scsp/framework/core/ers/ErsImpl$1;-><init>(Lcom/samsung/scsp/framework/core/ers/ErsImpl;)V

    const/4 v1, 0x0

    invoke-interface {p3, p2, v0, p1, v1}, Lcom/samsung/scsp/framework/core/network/Network;->get(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    return-void
.end method

.method private getHeaders(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "x-sc-app-id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getModelName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "x-sc-device-model"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "x-sc-os-type"

    const-string v1, "android"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getSDKVersion()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "x-sc-os-version"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getNetworkMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "x-sc-network-mnc"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getNetworkMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-sc-network-mcc"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getCsc()Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-sc-device-csc"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/DeviceUtil;->getIso3CountryCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-sc-device-cc"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getMaxAge(Ljava/util/Map;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v0, Lcom/samsung/scsp/framework/core/ers/d;

    invoke-direct {v0, p1}, Lcom/samsung/scsp/framework/core/ers/d;-><init>(Ljava/util/List;)V

    const-wide/32 v1, 0x15180

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/scsp/error/FaultBarrier;->get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;Z)Lcom/samsung/scsp/error/Response;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/scsp/error/Response;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private getPrimaryUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->getServerConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->ERS_MAIN_SERVER_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->ERS_MAIN_SERVER_MAP:Ljava/util/Map;

    const-string v0, "prd"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/lang/String;

    sput-object p1, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->url:Ljava/lang/String;

    :cond_1
    sget-object p1, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->url:Ljava/lang/String;

    return-object p1
.end method

.method private getSecondaryUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->getServerConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/scsp/framework/core/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->ERS_BACKUP_SERVER_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->ERS_BACKUP_SERVER_MAP:Ljava/util/Map;

    const-string v0, "prd"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/lang/String;

    sput-object p1, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->url:Ljava/lang/String;

    :cond_1
    sget-object p1, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->url:Ljava/lang/String;

    return-object p1
.end method

.method private getServerConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "com.samsung.android.scloud.config"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "X509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->byte2HexFormatted([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "03:38:BA:A6:9A:4E:57:0C:58:A6:08:2A:5E:21:B2:A7:B7:FD:16:F4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.samsung.android.scloud.config.server"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$getDomain$0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->getPrimaryUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->execute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getDomain$1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->getSecondaryUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->execute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getDomain$2(Lcom/samsung/scsp/framework/core/ers/ErsPreferences;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p1, Lcom/samsung/scsp/framework/core/ers/ErsPreferences;->expiredTime:Lcom/samsung/scsp/common/PreferenceItem;

    invoke-virtual {v0}, Lcom/samsung/scsp/common/PreferenceItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    new-instance v0, Lcom/samsung/scsp/framework/core/ers/a;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/scsp/framework/core/ers/a;-><init>(Lcom/samsung/scsp/framework/core/ers/ErsImpl;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/scsp/error/FaultBarrier;->run(Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;)Lcom/samsung/scsp/error/Result;

    move-result-object v0

    iget-boolean v1, v0, Lcom/samsung/scsp/error/Result;->success:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->logger:Lcom/samsung/scsp/error/Logger;

    const-string v1, "Cannot get ers url from server, So use backup server url"

    invoke-virtual {v0, v1}, Lcom/samsung/scsp/error/Logger;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/scsp/framework/core/ers/b;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/scsp/framework/core/ers/b;-><init>(Lcom/samsung/scsp/framework/core/ers/ErsImpl;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/scsp/error/FaultBarrier;->run(Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;)Lcom/samsung/scsp/error/Result;

    move-result-object v0

    :cond_0
    iget-boolean p2, v0, Lcom/samsung/scsp/error/Result;->success:Z

    if-nez p2, :cond_1

    iget-object p1, p1, Lcom/samsung/scsp/framework/core/ers/ErsPreferences;->expiredTime:Lcom/samsung/scsp/common/PreferenceItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/32 v0, 0x6ddd00

    add-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/scsp/common/PreferenceItem;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$getMaxAge$3(Ljava/util/List;)Ljava/lang/Long;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/scsp/framework/core/ers/DomainVo;
    .locals 3

    invoke-static {}, Lcom/samsung/scsp/framework/core/ers/ErsPreferences;->get()Lcom/samsung/scsp/framework/core/ers/ErsPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/scsp/framework/core/ers/e;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/samsung/scsp/framework/core/ers/e;-><init>(Lcom/samsung/scsp/framework/core/ers/ErsImpl;Lcom/samsung/scsp/framework/core/ers/ErsPreferences;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance p1, Lcom/samsung/scsp/framework/core/ers/c;

    invoke-direct {p1, v1}, Lcom/samsung/scsp/framework/core/ers/c;-><init>(Ljava/lang/Thread;)V

    invoke-static {p1}, Lcom/samsung/scsp/error/FaultBarrier;->run(Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;)Lcom/samsung/scsp/error/Result;

    new-instance p1, Lcom/samsung/scsp/framework/core/ers/DomainVo;

    invoke-direct {p1}, Lcom/samsung/scsp/framework/core/ers/DomainVo;-><init>()V

    iget-object p2, v0, Lcom/samsung/scsp/framework/core/ers/ErsPreferences;->defaultUrl:Lcom/samsung/scsp/common/PreferenceItem;

    invoke-virtual {p2}, Lcom/samsung/scsp/common/PreferenceItem;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/samsung/scsp/framework/core/ers/DomainVo;->defaultUrl:Ljava/lang/String;

    iget-object p2, v0, Lcom/samsung/scsp/framework/core/ers/ErsPreferences;->playUrl:Lcom/samsung/scsp/common/PreferenceItem;

    invoke-virtual {p2}, Lcom/samsung/scsp/common/PreferenceItem;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/samsung/scsp/framework/core/ers/DomainVo;->playUrl:Ljava/lang/String;

    iget-object p2, v0, Lcom/samsung/scsp/framework/core/ers/ErsPreferences;->expiredTime:Lcom/samsung/scsp/common/PreferenceItem;

    invoke-virtual {p2}, Lcom/samsung/scsp/common/PreferenceItem;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/scsp/framework/core/ers/DomainVo;->expiredTime:J

    return-object p1
.end method
