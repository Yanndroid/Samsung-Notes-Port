.class public abstract Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;,
        Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$ResponseType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x55a6fa9def57edceL


# instance fields
.field private final mClaims:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "claims"
    .end annotation
.end field

.field private final mClientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_id"
    .end annotation
.end field

.field private final transient mExtraQueryParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRedirectUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "redirect_uri"
    .end annotation
.end field

.field private final transient mRequestHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResponseType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response_type"
    .end annotation
.end field

.field private final mScope:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scope"
    .end annotation
.end field

.field private final mState:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field

.field private final transient mWebViewZoomControlsEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final transient mWebViewZoomEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->access$000(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mResponseType:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->access$100(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mClientId:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->access$200(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mRedirectUri:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->access$300(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->access$300(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->encodeUrlSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mState:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->access$400(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mScope:Ljava/lang/String;

    iget-object v0, p1, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mExtraQueryParams:Ljava/util/List;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mExtraQueryParams:Ljava/util/List;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->access$500(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mRequestHeaders:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->access$600(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mClaims:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->access$700(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mWebViewZoomEnabled:Z

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->access$800(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mWebViewZoomControlsEnabled:Z

    return-void
.end method


# virtual methods
.method public abstract getAuthorizationEndpoint()Ljava/lang/String;
.end method

.method public getAuthorizationRequestAsHttpRequest()Ljava/net/URI;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->getAuthorizationEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/ObjectMapper;->serializeObjectHashMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;->addParametersIfAbsent(Ljava/util/Map;)Lcom/microsoft/identity/common/java/util/CommonURIBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mExtraQueryParams:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;->addParametersIfAbsent(Ljava/util/List;)Lcom/microsoft/identity/common/java/util/CommonURIBuilder;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->build()Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "malformed_url"

    invoke-direct {v1, v3, v2, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getClaims()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mClaims:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraQueryParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mExtraQueryParams:Ljava/util/List;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mRedirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mRequestHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getResponseType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mResponseType:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mScope:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public isWebViewZoomControlsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mWebViewZoomControlsEnabled:Z

    return v0
.end method

.method public isWebViewZoomEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mWebViewZoomEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorizationRequest{mResponseType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mResponseType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mClientId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mRedirectUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mRedirectUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mScope=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mScope:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mState=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;->mState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
