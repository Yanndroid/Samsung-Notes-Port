.class public Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration$SerializedNames;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x382fd8e0bf3888e5L


# instance fields
.field private mDebugEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "debug_enabled"
    .end annotation
.end field

.field private mNotifyOnFailureOnly:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notify_on_failure_only"
    .end annotation
.end field

.field private mPiiEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pii_enabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->mPiiEnabled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->mNotifyOnFailureOnly:Z

    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->mDebugEnabled:Z

    return-void
.end method


# virtual methods
.method public isDebugEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->mDebugEnabled:Z

    return v0
.end method

.method public isPiiEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->mPiiEnabled:Z

    return v0
.end method

.method public setDebugEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->mDebugEnabled:Z

    return-void
.end method

.method public setNotifyOnFailureOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->mNotifyOnFailureOnly:Z

    return-void
.end method

.method public setPiiEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->mPiiEnabled:Z

    return-void
.end method

.method public shouldNotifyOnFailureOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;->mNotifyOnFailureOnly:Z

    return v0
.end method
