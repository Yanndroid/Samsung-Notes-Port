.class public abstract Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mClaims:Ljava/lang/String;

.field private mClientId:Ljava/lang/String;

.field public mExtraQueryParams:Ljava/util/List;
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

.field private mRedirectUri:Ljava/lang/String;

.field private mRequestHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseType:Ljava/lang/String;

.field private mScope:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field private mWebViewZoomControlsEnabled:Z

.field private mWebViewZoomEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "code"

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mWebViewZoomControlsEnabled:Z

    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mWebViewZoomEnabled:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mRedirectUri:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mState:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mRequestHeaders:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mClaims:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mWebViewZoomEnabled:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mWebViewZoomControlsEnabled:Z

    return p0
.end method


# virtual methods
.method public abstract build()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;
.end method

.method public abstract self()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public setClaims(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mClaims:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setClientId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mClientId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setExtraQueryParams(Ljava/util/List;)Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mExtraQueryParams:Ljava/util/List;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mRedirectUri:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRequestHeaders(Ljava/util/HashMap;)Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mRequestHeaders:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setResponseType(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setScope(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mScope:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setState(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mState:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWebViewZoomControlsEnabled(Z)Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mWebViewZoomControlsEnabled:Z

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWebViewZoomEnabled(Z)Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->mWebViewZoomEnabled:Z

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method
