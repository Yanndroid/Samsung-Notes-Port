.class Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;
.super Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/eststelemetry/ICurrentTelemetry;


# instance fields
.field private mApiId:Ljava/lang/String;

.field private mForceRefresh:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "2"

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getApiId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;->mApiId:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderStringForFields()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;->mApiId:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/identity/common/java/eststelemetry/TelemetryUtils;->getSchemaCompliantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;->mForceRefresh:Z

    invoke-static {v1}, Lcom/microsoft/identity/common/java/eststelemetry/TelemetryUtils;->getSchemaCompliantStringFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isForceRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;->mForceRefresh:Z

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "key is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "value is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Microsoft.MSAL.force_refresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Microsoft.MSAL.api_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;->putInPlatformTelemetry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;->mApiId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/microsoft/identity/common/java/eststelemetry/TelemetryUtils;->getBooleanFromSchemaString(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/eststelemetry/CurrentRequestTelemetry;->mForceRefresh:Z

    :goto_0
    return-void
.end method
