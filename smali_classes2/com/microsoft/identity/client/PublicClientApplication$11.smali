.class Lcom/microsoft/identity/client/PublicClientApplication$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/PublicClientApplication;->createSingleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$11;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/microsoft/identity/client/IPublicClientApplication;)V
    .locals 3

    instance-of v0, p1, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$11;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;

    check-cast p1, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;->onCreated(Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/microsoft/identity/client/IPublicClientApplication;->getConfiguration()Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    move-result-object p1

    sget-object v0, Lcom/microsoft/identity/client/configuration/AccountMode;->SINGLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$11;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;

    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v1, "single_account_pca_init_fail_account_mode"

    const-string v2, "AccountMode in configuration is not set to single. Cannot initialize single account PublicClientApplication."

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$11;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;

    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v1, "single_account_pca_init_fail_unknown_reason"

    const-string v2, "A single account public client application could not be created for unknown reasons."

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    :goto_0
    return-void
.end method

.method public onError(Lcom/microsoft/identity/client/exception/MsalException;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$11;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void
.end method
