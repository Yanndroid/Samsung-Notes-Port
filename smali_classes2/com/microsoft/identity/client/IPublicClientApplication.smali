.class public interface abstract Lcom/microsoft/identity/client/IPublicClientApplication;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;,
        Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;,
        Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;,
        Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;,
        Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;,
        Lcom/microsoft/identity/client/IPublicClientApplication$SignedHttpRequestRequestCallback;
    }
.end annotation


# virtual methods
.method public abstract acquireToken(Landroid/app/Activity;[Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/client/AuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract acquireToken(Lcom/microsoft/identity/client/AcquireTokenParameters;)V
    .param p1    # Lcom/microsoft/identity/client/AcquireTokenParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract acquireTokenSilent(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)Lcom/microsoft/identity/client/IAuthenticationResult;
    .param p1    # Lcom/microsoft/identity/client/AcquireTokenSilentParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract acquireTokenSilentAsync(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)V
    .param p1    # Lcom/microsoft/identity/client/AcquireTokenSilentParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract acquireTokenWithDeviceCode(Ljava/util/List;Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract acquireTokenWithDeviceCode([Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;)V
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract generateSignedHttpRequest(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/PoPAuthenticationScheme;)Ljava/lang/String;
    .param p1    # Lcom/microsoft/identity/client/IAccount;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/PoPAuthenticationScheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract generateSignedHttpRequest(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/PoPAuthenticationScheme;Lcom/microsoft/identity/client/IPublicClientApplication$SignedHttpRequestRequestCallback;)V
    .param p1    # Lcom/microsoft/identity/client/IAccount;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/PoPAuthenticationScheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/client/IPublicClientApplication$SignedHttpRequestRequestCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getConfiguration()Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
.end method

.method public abstract isSharedDevice()Z
.end method
