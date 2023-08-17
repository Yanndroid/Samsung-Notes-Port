.class Lcom/microsoft/identity/client/PublicClientApplication$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/PublicClientApplication;->createMultipleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$10;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/microsoft/identity/client/IPublicClientApplication;)V
    .locals 3
    .param p1    # Lcom/microsoft/identity/client/IPublicClientApplication;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$10;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;

    check-cast p1, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;->onCreated(Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/microsoft/identity/client/IPublicClientApplication;->getConfiguration()Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/client/configuration/AccountMode;->MULTIPLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lcom/microsoft/identity/client/IPublicClientApplication;->isSharedDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$10;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;

    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v1, "multiple_account_pca_init_fail_on_shared_device"

    const-string v2, "This application is not supported in the shared device mode. Please contact application developer to update the app."

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$10;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;

    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v1, "multiple_account_pca_init_fail_unknown_reason"

    const-string v2, "Multiple account PublicClientApplication could not be created for unknown reasons"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    :goto_0
    return-void
.end method

.method public onError(Lcom/microsoft/identity/client/exception/MsalException;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$10;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void
.end method
