.class public final synthetic Le/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryDefaultObserver;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryDefaultObserver;->onReceived(Ljava/util/List;)V

    return-void
.end method
