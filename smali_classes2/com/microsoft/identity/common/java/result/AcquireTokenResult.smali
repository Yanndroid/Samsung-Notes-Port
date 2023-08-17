.class public Lcom/microsoft/identity/common/java/result/AcquireTokenResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAuthorizationResult:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;

.field private mLocalAuthenticationResult:Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;

.field private mSucceeded:Ljava/lang/Boolean;

.field private mTokenResult:Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mSucceeded:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAuthorizationResult()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mAuthorizationResult:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;

    return-object v0
.end method

.method public getLocalAuthenticationResult()Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mLocalAuthenticationResult:Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;

    return-object v0
.end method

.method public getSucceeded()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mSucceeded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTokenResult()Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mTokenResult:Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;

    return-object v0
.end method

.method public setAuthorizationResult(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mAuthorizationResult:Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;

    return-void
.end method

.method public setLocalAuthenticationResult(Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mLocalAuthenticationResult:Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mSucceeded:Ljava/lang/Boolean;

    return-void
.end method

.method public setTokenResult(Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mTokenResult:Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;

    return-void
.end method
