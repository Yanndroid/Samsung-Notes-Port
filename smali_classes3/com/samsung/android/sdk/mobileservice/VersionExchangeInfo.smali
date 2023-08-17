.class final Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AGENT_STATUS:Ljava/lang/String; = "agent_status"

.field public static final AGENT_STATUS_AGENT_NOT_AVAILABLE:I = 0x4

.field public static final AGENT_STATUS_AGENT_UPDATE_NEEDED:I = 0x3

.field public static final AGENT_STATUS_MAX:I = 0x4

.field public static final AGENT_STATUS_OK:I = 0x0

.field public static final AGENT_STATUS_PARTIAL_OK:I = 0x1

.field public static final AGENT_STATUS_SDK_UPDATE_NEEDED:I = 0x2

.field public static final AGENT_STATUS_UNDEFINED:I = 0x63

.field private static final API_VERSION:Ljava/lang/String; = "api_version"

.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field public static final DEFAULT_VERSION:I = 0x0

.field private static final FORCE_UPDATE_ACTIVITY_INFO:Ljava/lang/String; = "force_update_activity_info"

.field private static final LATEST_VERSION_IN_MARKET:Ljava/lang/String; = "lastest_version_in_market"

.field private static final SA_AGENT_STATUS:Ljava/lang/String; = "sa_agent_status"

.field private static final SA_AGENT_VERSION:Ljava/lang/String; = "sa_agent_version"

.field private static final SA_LATEST_VERSION_IN_MARKET_SA:Ljava/lang/String; = "sa_lastest_version_in_market"

.field private static final SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final SEMS_VERSION:Ljava/lang/String; = "sems_version"

.field private static final SERVICE_STATUS:Ljava/lang/String; = "service_status"

.field public static final SERVICE_STATUS_BLOCKED_BY_POLICY:I = 0x4

.field public static final SERVICE_STATUS_FORCE_UPDATE_REQUIRED:I = 0x2

.field public static final SERVICE_STATUS_MAX:I = 0x4

.field public static final SERVICE_STATUS_NOT_SUPPORTED:I = 0x1

.field public static final SERVICE_STATUS_NOT_SUPPORT_SDK_VERSION:I = 0x3

.field public static final SERVICE_STATUS_OK:I = 0x0

.field public static final SERVICE_STATUS_UNDEFINED:I = 0x63

.field private static final SERVICE_VERSION:Ljava/lang/String; = "service_version"


# instance fields
.field private mAgentLastestVersionInGalaxyApps:J

.field private mAgentStatus:I

.field private mAgentVersion:I

.field private mApiVersion:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppId:Ljava/lang/String;

.field private mForceUpdateActivityInfo:Ljava/lang/String;

.field private mSaAgentLastestVersionInGalaxyApps:J

.field private mSaAgentStatus:I

.field private mSaAgentVersion:I

.field private mSdkVersion:I

.field private mServiceStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceVersion:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceVersion:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mApiVersion:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceStatus:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSdkVersion:I

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentVersion:I

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentVersion:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentStatus:I

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentStatus:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mForceUpdateActivityInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAppId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs addService([Ljava/lang/String;)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceVersion:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addSupportedApiVersion(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mApiVersion:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceVersion:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mApiVersion:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSdkVersion:I

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentVersion:I

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentVersion:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentStatus:I

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentStatus:I

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceStatus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAgentLastestVersionInGalaxyApps()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentLastestVersionInGalaxyApps:J

    return-wide v0
.end method

.method public getAgentStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentStatus:I

    return v0
.end method

.method public getAllServiceStatus()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method public getApiVersion(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mApiVersion:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mApiVersion:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getForceUpdateActivityInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mForceUpdateActivityInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedServices()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceVersion:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSaAgentLastestVersionInGalaxyApps()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentLastestVersionInGalaxyApps:J

    return-wide v0
.end method

.method public getSaAgentStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentStatus:I

    return v0
.end method

.method public getSaAgentVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentVersion:I

    return v0
.end method

.method public getSdkVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSdkVersion:I

    return v0
.end method

.method public getServiceStatus(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceStatus:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceStatus:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public getServiceVersion(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceVersion:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceVersion:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getSesVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentVersion:I

    return v0
.end method

.method public varargs declared-synchronized put(Landroid/os/Bundle;Z[Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "sdk_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sdk_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSdkVersion:I

    :cond_1
    const-string v0, "sems_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "sems_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentVersion:I

    :cond_2
    const-string v0, "sa_agent_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "sa_agent_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentVersion:I

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentVersion:I

    goto :goto_0

    :cond_4
    :goto_1
    const-string v0, "service_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v0, "service_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_6

    array-length v2, p3

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, p3, v3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceVersion:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_6
    const-string v0, "api_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "api_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mApiVersion:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_7
    const-string v0, "agent_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "agent_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentStatus:I

    :cond_8
    const-string v0, "sa_agent_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "sa_agent_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentStatus:I

    goto :goto_4

    :cond_9
    if-nez p2, :cond_a

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentStatus:I

    goto :goto_3

    :cond_a
    :goto_4
    const-string v0, "service_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "service_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_c

    array-length v2, p3

    :goto_5
    if-ge v1, v2, :cond_b

    aget-object v3, p3, v1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    iget-object p3, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceStatus:Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_c
    const-string p3, "force_update_activity_info"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d

    const-string p3, "force_update_activity_info"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mForceUpdateActivityInfo:Ljava/lang/String;

    :cond_d
    const-string p3, "lastest_version_in_market"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_e

    const-string p3, "lastest_version_in_market"

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentLastestVersionInGalaxyApps:J

    :cond_e
    const-string p3, "sa_lastest_version_in_market"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f

    const-string p2, "sa_lastest_version_in_market"

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    :goto_6
    iput-wide p2, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentLastestVersionInGalaxyApps:J

    goto :goto_7

    :cond_f
    if-eqz p2, :cond_10

    iget-wide p2, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentLastestVersionInGalaxyApps:J

    goto :goto_6

    :cond_10
    :goto_7
    const-string p2, "app_id"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    const-string p2, "app_id"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAppId:Ljava/lang/String;

    :cond_11
    iget p1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentStatus:I

    const/16 p2, 0x63

    const/4 p3, 0x4

    if-le p1, p3, :cond_12

    iput p2, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentStatus:I

    :cond_12
    iget p1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentStatus:I

    if-le p1, p3, :cond_13

    iput p2, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentStatus:I

    :cond_13
    iget-object p1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceStatus:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceStatus:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, p3, :cond_14

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceStatus:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :cond_15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAgentLastestVersionInGalaxyApps(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentLastestVersionInGalaxyApps:J

    return-void
.end method

.method public setAgentStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentStatus:I

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setForceUpdateActivityInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mForceUpdateActivityInfo:Ljava/lang/String;

    return-void
.end method

.method public setSaAgentLastestVersionInGalaxyApps(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentLastestVersionInGalaxyApps:J

    return-void
.end method

.method public setSaAgentStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentStatus:I

    return-void
.end method

.method public setSaAgentVersion(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentVersion:I

    return-void
.end method

.method public setSdkVersion(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSdkVersion:I

    return-void
.end method

.method public setSemsVersion(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentVersion:I

    return-void
.end method

.method public setServiceStatus(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceStatus:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setServiceVersion(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceVersion:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceVersion:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSdkVersion:I

    const-string v2, "sdk_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentVersion:I

    const-string v2, "sems_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentVersion:I

    const-string v2, "sa_agent_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceVersion:Ljava/util/HashMap;

    const-string v2, "service_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mApiVersion:Ljava/util/HashMap;

    const-string v2, "api_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentStatus:I

    const-string v2, "agent_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentStatus:I

    const-string v2, "sa_agent_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAppId:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mServiceStatus:Ljava/util/HashMap;

    const-string v2, "service_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mForceUpdateActivityInfo:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "force_update_activity_info"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-wide v1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mAgentLastestVersionInGalaxyApps:J

    const-string v3, "lastest_version_in_market"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->mSaAgentLastestVersionInGalaxyApps:J

    const-string v3, "sa_lastest_version_in_market"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method
