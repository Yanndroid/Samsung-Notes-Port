.class public Lcom/microsoft/identity/client/exception/MsalDeclinedScopeException;
.super Lcom/microsoft/identity/client/exception/MsalException;
.source "SourceFile"


# instance fields
.field private mDeclinedScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGrantedScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSilentParametersForGrantedScopes:Lcom/microsoft/identity/client/AcquireTokenSilentParameters;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/client/AcquireTokenSilentParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/identity/client/AcquireTokenSilentParameters;",
            ")V"
        }
    .end annotation

    const-string v0, "declined_scope_error"

    const-string v1, "Some or all requested scopes have been declined by the Server"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/exception/MsalException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/identity/client/exception/MsalDeclinedScopeException;->mGrantedScopes:Ljava/util/List;

    iput-object p2, p0, Lcom/microsoft/identity/client/exception/MsalDeclinedScopeException;->mDeclinedScopes:Ljava/util/List;

    iput-object p3, p0, Lcom/microsoft/identity/client/exception/MsalDeclinedScopeException;->mSilentParametersForGrantedScopes:Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    return-void
.end method


# virtual methods
.method public getDeclinedScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/client/exception/MsalDeclinedScopeException;->mDeclinedScopes:Ljava/util/List;

    return-object v0
.end method

.method public getGrantedScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/client/exception/MsalDeclinedScopeException;->mGrantedScopes:Ljava/util/List;

    return-object v0
.end method

.method public getSilentParametersForGrantedScopes()Lcom/microsoft/identity/client/AcquireTokenSilentParameters;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/exception/MsalDeclinedScopeException;->mSilentParametersForGrantedScopes:Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    return-object v0
.end method
