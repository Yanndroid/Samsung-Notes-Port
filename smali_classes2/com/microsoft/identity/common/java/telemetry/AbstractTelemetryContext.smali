.class public abstract Lcom/microsoft/identity/common/java/telemetry/AbstractTelemetryContext;
.super Lcom/microsoft/identity/common/java/telemetry/Properties;
.source "SourceFile"


# instance fields
.field private mTelemetryPropsCache:Lcom/microsoft/identity/common/java/telemetry/TelemetryPropertiesCache;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/telemetry/TelemetryPropertiesCache;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/telemetry/TelemetryPropertiesCache;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/telemetry/Properties;-><init>()V

    const-string v0, "telemetryPropertiesCache is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/telemetry/AbstractTelemetryContext;->mTelemetryPropsCache:Lcom/microsoft/identity/common/java/telemetry/TelemetryPropertiesCache;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/telemetry/TelemetryPropertiesCache;->getOrCreateRandomStableDeviceId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Microsoft.MSAL.device_guid"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/Properties;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Microsoft.MSAL.time_zone"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/Properties;

    return-void
.end method


# virtual methods
.method public addApplicationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Microsoft.MSAL.application_name"

    invoke-virtual {p0, v0, p2}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/Properties;

    const-string p2, "Microsoft.MSAL.application_package"

    invoke-virtual {p0, p2, p1}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/Properties;

    const-string p1, "Microsoft.MSAL.application_version"

    invoke-virtual {p0, p1, p3}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/Properties;

    const-string p1, "Microsoft.MSAL.application_build"

    invoke-virtual {p0, p1, p4}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/Properties;

    return-void
.end method

.method public addDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Microsoft.MSAL.device_manufacturer"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/Properties;

    const-string p1, "Microsoft.MSAL.device_model"

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/Properties;

    const-string p1, "Microsoft.MSAL.device_name"

    invoke-virtual {p0, p1, p3}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/Properties;

    return-void
.end method

.method public addOsInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Microsoft.MSAL.os_name"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/Properties;

    const-string p1, "Microsoft.MSAL.os_version"

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/java/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/Properties;

    return-void
.end method
