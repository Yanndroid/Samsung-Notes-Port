.class public Lcom/microsoft/identity/client/AcquireTokenSilentParameters;
.super Lcom/microsoft/identity/client/TokenParameters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

.field private mForceRefresh:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/microsoft/identity/client/TokenParameters;-><init>(Lcom/microsoft/identity/client/TokenParameters$Builder;)V

    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->access$000(Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->mForceRefresh:Z

    invoke-static {p1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->access$100(Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;)Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->mCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/microsoft/identity/client/SilentAuthenticationCallback;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->mCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    return-object v0
.end method

.method public getForceRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->mForceRefresh:Z

    return v0
.end method

.method public setCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->mCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    return-void
.end method

.method public setForceRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->mForceRefresh:Z

    return-void
.end method
