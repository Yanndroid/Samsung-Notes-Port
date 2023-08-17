.class public Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/adal/internal/net/IConnectionService;


# instance fields
.field private final mConnectionContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;->mConnectionContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isConnectionAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;->mConnectionContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;

    invoke-direct {v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Microsoft.MSAL.network_connection"

    invoke-virtual {v1, v3, v2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/Properties;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;

    invoke-static {v1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    return v0
.end method

.method public isNetworkDisabledFromOptimizations()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-static {}, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;->getInstance()Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;->mConnectionContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;->isDeviceIdleMode(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "Microsoft.MSAL.power_optimization"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;->mConnectionContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;->isIgnoringBatteryOptimizations(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;-><init>()V

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/Properties;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;

    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    return v1

    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;-><init>()V

    const/4 v1, 0x0

    goto :goto_0
.end method
