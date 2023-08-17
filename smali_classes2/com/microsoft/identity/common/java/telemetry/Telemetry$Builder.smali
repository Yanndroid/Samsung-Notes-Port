.class public Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/telemetry/Telemetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDefaultConfiguration:Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;

.field private mIsDebugging:Ljava/lang/Boolean;

.field private mTelemetryContext:Lcom/microsoft/identity/common/java/telemetry/AbstractTelemetryContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/java/telemetry/AbstractTelemetryContext;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->mTelemetryContext:Lcom/microsoft/identity/common/java/telemetry/AbstractTelemetryContext;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->mDefaultConfiguration:Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->mIsDebugging:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/common/java/telemetry/Telemetry;
    .locals 1

    invoke-static {p0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->access$300(Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    move-result-object v0

    return-object v0
.end method

.method public defaultConfiguration(Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;)Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->mDefaultConfiguration:Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;

    return-object p0
.end method

.method public isDebugging(Z)Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->mIsDebugging:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withTelemetryContext(Lcom/microsoft/identity/common/java/telemetry/AbstractTelemetryContext;)Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->mTelemetryContext:Lcom/microsoft/identity/common/java/telemetry/AbstractTelemetryContext;

    return-object p0
.end method
