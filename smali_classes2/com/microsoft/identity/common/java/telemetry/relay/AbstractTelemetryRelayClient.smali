.class public abstract Lcom/microsoft/identity/common/java/telemetry/relay/AbstractTelemetryRelayClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractTelemetryRelayClient"


# instance fields
.field private mEventFilter:Lcom/microsoft/identity/common/java/telemetry/relay/ITelemetryEventFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/telemetry/relay/ITelemetryEventFilter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/relay/AbstractTelemetryRelayClient;->mEventFilter:Lcom/microsoft/identity/common/java/telemetry/relay/ITelemetryEventFilter;

    return-void
.end method


# virtual methods
.method public abstract flush()V
.end method

.method public onReceived(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/java/telemetry/relay/AbstractTelemetryRelayClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":onReceived"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/java/telemetry/relay/AbstractTelemetryRelayClient;->mEventFilter:Lcom/microsoft/identity/common/java/telemetry/relay/ITelemetryEventFilter;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/microsoft/identity/common/java/telemetry/relay/ITelemetryEventFilter;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/telemetry/relay/AbstractTelemetryRelayClient;->relayEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/telemetry/relay/TelemetryRelayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Error relaying telemetry data"

    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract relayEvent(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setFilter(Lcom/microsoft/identity/common/java/telemetry/relay/ITelemetryEventFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/telemetry/relay/ITelemetryEventFilter<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/telemetry/relay/AbstractTelemetryRelayClient;->mEventFilter:Lcom/microsoft/identity/common/java/telemetry/relay/ITelemetryEventFilter;

    return-void
.end method
