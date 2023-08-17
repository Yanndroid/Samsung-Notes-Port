.class public final synthetic Le/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryAggregatedObserver;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryAggregatedObserver;->onReceived(Ljava/util/Map;)V

    return-void
.end method
