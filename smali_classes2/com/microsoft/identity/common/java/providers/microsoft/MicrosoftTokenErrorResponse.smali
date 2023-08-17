.class public Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;
.super Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;
.source "SourceFile"


# instance fields
.field private mCorrelationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "correlation_id"
    .end annotation
.end field

.field private mErrorCodes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_codes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOAuthErrorMetadata:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oAuth_metadata"
    .end annotation
.end field

.field private mTimeStamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private mTraceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trace_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;->mErrorCodes:Ljava/util/List;

    return-object v0
.end method

.method public getOAuthErrorMetadata()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;->mOAuthErrorMetadata:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;->mTraceId:Ljava/lang/String;

    return-object v0
.end method

.method public setCorrelationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;->mCorrelationId:Ljava/lang/String;

    return-void
.end method

.method public setErrorCodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;->mErrorCodes:Ljava/util/List;

    return-void
.end method

.method public setOAuthErrorMetadata(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;->mOAuthErrorMetadata:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;->mTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;->mTraceId:Ljava/lang/String;

    return-void
.end method
