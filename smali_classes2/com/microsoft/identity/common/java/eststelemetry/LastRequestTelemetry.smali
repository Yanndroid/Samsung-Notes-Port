.class public Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;
.super Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;
.source "SourceFile"


# annotations
.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "RCN_REDUNDANT_NULLCHECK_WOULD_HAVE_BEEN_A_NPE"
    }
.end annotation


# static fields
.field public static final FAILED_REQUEST_CAP:I = 0x64


# instance fields
.field private failedRequests:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "failed_requests"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;",
            ">;"
        }
    .end annotation
.end field

.field private silentSuccessfulCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "silent_successful_count"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;-><init>(Ljava/lang/String;)V

    const-string v0, "schemaVersion is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->silentSuccessfulCount:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->failedRequests:Ljava/util/List;

    return-void
.end method

.method private getHeaderStringForFailedRequests()Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->failedRequests:Ljava/util/List;

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v0, v1, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    new-array v3, v2, [Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v0, v1, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_3

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;->toApiIdCorrelationString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;->toErrorCodeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_2

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public appendFailedRequest(Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;)V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->failedRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->failedRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->failedRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->failedRequests:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->failedRequests:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->failedRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendFailedRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->appendFailedRequest(Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;)V

    return-void
.end method

.method public copySharedValues(Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;)Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "requestTelemetry is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;

    iget v0, v0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->silentSuccessfulCount:I

    iput v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->silentSuccessfulCount:I

    :cond_0
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/eststelemetry/RequestTelemetry;->copySharedValues(Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;)Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;

    move-result-object p1

    return-object p1
.end method

.method public getFailedRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->failedRequests:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderStringForFields()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->getHeaderStringForFailedRequests()Ljava/util/Map$Entry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->silentSuccessfulCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public incrementSilentSuccessCount()V
    .locals 1

    iget v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->silentSuccessfulCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->silentSuccessfulCount:I

    return-void
.end method

.method public resetSilentSuccessCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->silentSuccessfulCount:I

    return-void
.end method

.method public wipeFailedRequestAndErrorForSubList(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/microsoft/identity/common/java/eststelemetry/FailedRequest;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/common/java/eststelemetry/LastRequestTelemetry;->failedRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
