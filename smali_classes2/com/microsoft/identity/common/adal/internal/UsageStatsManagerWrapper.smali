.class public Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;
    .locals 2

    const-class v0, Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;->sInstance:Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;

    invoke-direct {v1}, Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;-><init>()V

    sput-object v1, Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;->sInstance:Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;

    :cond_0
    sget-object v1, Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;->sInstance:Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setInstance(Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;)V
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;->sInstance:Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public isAppInactive(Landroid/content/Context;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string/jumbo v0, "usagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/usage/UsageStatsManager;->isAppInactive(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
