.class public final Lcom/microsoft/identity/common/java/telemetry/adapter/TelemetryDefaultAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/telemetry/adapter/ITelemetryAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/telemetry/adapter/ITelemetryAdapter<",
        "Ljava/util/List<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mObserver:Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryDefaultObserver;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryDefaultObserver;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryDefaultObserver;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "observer is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/telemetry/adapter/TelemetryDefaultAdapter;->mObserver:Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryDefaultObserver;

    return-void
.end method


# virtual methods
.method public getObserver()Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryDefaultObserver;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/adapter/TelemetryDefaultAdapter;->mObserver:Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryDefaultObserver;

    return-object v0
.end method

.method public bridge synthetic process(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/telemetry/adapter/TelemetryDefaultAdapter;->process(Ljava/util/List;)V

    return-void
.end method

.method public process(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "rawData is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/adapter/TelemetryDefaultAdapter;->mObserver:Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryDefaultObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/microsoft/identity/common/java/telemetry/observers/ITelemetryDefaultObserver;->onReceived(Ljava/util/List;)V

    return-void
.end method
