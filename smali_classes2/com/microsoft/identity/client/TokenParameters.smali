.class public abstract Lcom/microsoft/identity/client/TokenParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/TokenParameters$Builder;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/microsoft/identity/client/IAccount;

.field private mAccountRecord:Lcom/microsoft/identity/common/java/dto/AccountRecord;

.field private mAuthenticationScheme:Lcom/microsoft/identity/client/AuthenticationScheme;

.field private mAuthority:Ljava/lang/String;

.field private mClaimsRequest:Lcom/microsoft/identity/client/claims/ClaimsRequest;

.field private mCorrelationId:Ljava/lang/String;

.field private mScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/TokenParameters$Builder;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/client/TokenParameters$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->access$000(Lcom/microsoft/identity/client/TokenParameters$Builder;)Lcom/microsoft/identity/client/IAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAccount:Lcom/microsoft/identity/client/IAccount;

    invoke-static {p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->access$100(Lcom/microsoft/identity/client/TokenParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAuthority:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->access$200(Lcom/microsoft/identity/client/TokenParameters$Builder;)Lcom/microsoft/identity/client/claims/ClaimsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mClaimsRequest:Lcom/microsoft/identity/client/claims/ClaimsRequest;

    invoke-static {p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->access$300(Lcom/microsoft/identity/client/TokenParameters$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mScopes:Ljava/util/List;

    invoke-static {p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->access$400(Lcom/microsoft/identity/client/TokenParameters$Builder;)Lcom/microsoft/identity/client/AuthenticationScheme;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAuthenticationScheme:Lcom/microsoft/identity/client/AuthenticationScheme;

    invoke-static {p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->access$500(Lcom/microsoft/identity/client/TokenParameters$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters;->mCorrelationId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Lcom/microsoft/identity/client/IAccount;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAccount:Lcom/microsoft/identity/client/IAccount;

    return-object v0
.end method

.method public getAccountRecord()Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAccountRecord:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    return-object v0
.end method

.method public getAuthenticationScheme()Lcom/microsoft/identity/client/AuthenticationScheme;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAuthenticationScheme:Lcom/microsoft/identity/client/AuthenticationScheme;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getClaimsRequest()Lcom/microsoft/identity/client/claims/ClaimsRequest;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mClaimsRequest:Lcom/microsoft/identity/client/claims/ClaimsRequest;

    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mScopes:Ljava/util/List;

    return-object v0
.end method

.method public setAccount(Lcom/microsoft/identity/client/IAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters;->mAccount:Lcom/microsoft/identity/client/IAccount;

    return-void
.end method

.method public setAccountRecord(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters;->mAccountRecord:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method public setScopes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters;->mScopes:Ljava/util/List;

    return-void
.end method
