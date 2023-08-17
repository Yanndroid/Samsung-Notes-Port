.class public Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;
.super Lcom/microsoft/identity/common/java/telemetry/events/ApiStartEvent;
.source "SourceFile"


# annotations
.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "NM_SAME_SIMPLE_NAME_AS_SUPERCLASS"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/telemetry/events/ApiStartEvent;-><init>()V

    return-void
.end method
