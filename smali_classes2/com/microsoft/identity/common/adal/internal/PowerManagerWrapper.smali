.class public Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;
    .locals 2

    const-class v0, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;->sInstance:Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;

    invoke-direct {v1}, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;-><init>()V

    sput-object v1, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;->sInstance:Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;

    :cond_0
    sget-object v1, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;->sInstance:Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setInstance(Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;)V
    .locals 0

    sput-object p0, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;->sInstance:Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;

    return-void
.end method


# virtual methods
.method public isDeviceIdleMode(Landroid/content/Context;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    return p1
.end method

.method public isIgnoringBatteryOptimizations(Landroid/content/Context;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
