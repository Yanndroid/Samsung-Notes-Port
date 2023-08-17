.class Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mApiId:Ljava/lang/String;

.field private final mCorrelationId:Ljava/lang/String;

.field private final mError:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;->mApiId:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;->mCorrelationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;->mError:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;->mCorrelationId:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toApiIdCorrelationString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;->mApiId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toErrorCodeString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;->mError:Ljava/lang/String;

    return-object v0
.end method
