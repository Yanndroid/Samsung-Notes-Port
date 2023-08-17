.class public Lcom/microsoft/identity/client/TokenParametersAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static silentParametersFromInteractive(Lcom/microsoft/identity/client/AcquireTokenParameters;Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;)Lcom/microsoft/identity/client/AcquireTokenSilentParameters;
    .locals 2
    .param p0    # Lcom/microsoft/identity/client/AcquireTokenParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;->getCacheRecordWithTenantProfileData()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/client/AccountAdapter;->adapt(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/IAccount;

    new-instance v0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    invoke-direct {v0}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getCallback()Lcom/microsoft/identity/client/AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->withCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;)Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->fromAuthority(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getClaimsRequest()Lcom/microsoft/identity/client/claims/ClaimsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withClaims(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withScopes(Ljava/util/List;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->forAccount(Lcom/microsoft/identity/client/IAccount;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->build()Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    move-result-object p0

    return-object p0
.end method
