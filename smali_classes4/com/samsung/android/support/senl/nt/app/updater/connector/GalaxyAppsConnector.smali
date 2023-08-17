.class public Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;


# static fields
.field private static final DEFAULT_MCC:Ljava/lang/String; = ""

.field private static final DEFAULT_MCC_PD:Ljava/lang/String; = ""

.field private static final DEFAULT_MNC:Ljava/lang/String; = ""

.field public static final MINIMUM_EXPECTED_NOTES_VERSION:I = 0xa

.field public static final RESULT_CODE_NOT_AVAILABLE:I = 0x0

.field public static final RESULT_CODE_NOT_NECESSARY_TO_UPDATE:I = 0x1

.field public static final RESULT_CODE_NO_NETWORK:I = 0x3

.field public static final RESULT_CODE_UPDATE_AVAILABLE:I = 0x2

.field private static final STUB_UPDATE_CHECK_URL:Ljava/lang/String; = "https://vas.samsungapps.com/stub/stubUpdateCheck.as"

.field private static final TAG:Ljava/lang/String; = "GalaxyAppsConnector"

.field private static final XML_TAG_APP_ID:Ljava/lang/String; = "appId"

.field private static final XML_TAG_RESULT_CODE:Ljava/lang/String; = "resultCode"

.field private static final XML_TAG_RESULT_MSG:Ljava/lang/String; = "resultMsg"

.field private static final XML_TAG_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field private static final XML_TAG_VERSION_NAME:Ljava/lang/String; = "versionName"


# instance fields
.field private mListener:Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;)Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;->mListener:Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;->getCurrentVersionCode()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;->getMarketVersionCode()I

    move-result p0

    return p0
.end method

.method private getCurrentVersionCode()I
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getMarketVersionCode()I
    .locals 10

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getLastCheckedMarketVersionCode()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;->getCurrentVersionCode()I

    move-result v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SAMSUNG-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    const/4 v6, 0x3

    const-string v7, "Connection failed"

    const-string v8, "GalaxyAppsConnector"

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v9, 0x1

    if-eq v4, v9, :cond_3

    const/4 v9, 0x4

    if-eq v4, v9, :cond_4

    const/16 v9, 0x9

    if-eq v4, v9, :cond_3

    const/4 v9, 0x6

    if-eq v4, v9, :cond_3

    const/4 v9, 0x7

    if-eq v4, v9, :cond_3

    invoke-static {v8, v7}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_3
    move-object v4, v5

    move-object v6, v4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getMcc()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getMnc()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->isQaServerEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    :cond_5
    move-object v5, v4

    :goto_1
    :try_start_0
    const-string v4, "checkUpdate# "

    invoke-static {v8, v4}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "https://vas.samsungapps.com/stub/stubUpdateCheck.as"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v7, "appId"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v9, "callerId"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v9, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v7, "versionCode"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "deviceId"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "mcc"

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "mnc"

    invoke-virtual {v1, v2, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "csc"

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getCsc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "cc"

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "sdkVer"

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getSdkVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "systemId"

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "abiType"

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getAbiType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "extuk"

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->getExtuk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "pd"

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/AppUpdateUtil;->getPd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "updateType"

    const-string v3, "self"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/net/URL;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;->getVersionCodeFromURL(Ljava/net/URL;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    const-string v2, "getMarketVersionCode"

    invoke-static {v8, v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return v0

    :cond_6
    :goto_3
    invoke-static {v8, v7}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method private getVersionCodeFromURL(Ljava/net/URL;)I
    .locals 9

    const-string v0, "GalaxyAppsConnector"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v3, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_5

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    goto :goto_3

    :cond_1
    const-string v5, "appId"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v6, 0xa

    const-string v7, ": "

    if-nez v5, :cond_3

    :try_start_2
    const-string v5, "resultCode"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "resultMsg"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "versionName"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const-string v5, "versionCode"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    :goto_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_6

    :goto_4
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catchall_0
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    :goto_5
    :try_start_4
    const-string v3, "getVersionCodeFromURL"

    invoke-static {v0, v3, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_6

    goto :goto_4

    :catch_0
    :cond_6
    :goto_6
    return v2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_7

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :cond_7
    throw v0
.end method


# virtual methods
.method public checkNewVersionOnMarket(Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;->mListener:Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;-><init>(Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo;->setOnDeviceIdHelperForSamsungNotes(Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;)V

    return-void
.end method

.method public initLastCheckedMarketVersionCode()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->initLastCheckedMarketVersionCode()V

    return-void
.end method

.method public moveToMarket()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->goToGalaxyAppStore()V

    return-void
.end method

.method public setLastCheckedMarketVersionCode(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setLastCheckedMarketVersionCode(I)V

    return-void
.end method

.method public declared-synchronized setListener(Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo;->release()V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;->mListener:Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
