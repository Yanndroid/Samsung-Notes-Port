.class public Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;
.super Lcom/microsoft/identity/client/TokenParameters$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/AcquireTokenSilentParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/client/TokenParameters$Builder<",
        "Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

.field private mForceRefresh:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/client/TokenParameters$Builder;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->mForceRefresh:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;)Lcom/microsoft/identity/client/SilentAuthenticationCallback;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->mCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/client/AcquireTokenSilentParameters;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;-><init>(Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/client/TokenParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->build()Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    move-result-object v0

    return-object v0
.end method

.method public forceRefresh(Z)Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->mForceRefresh:Z

    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->self()Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public self()Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/client/TokenParameters$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->self()Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;)Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->mCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    return-object p0
.end method
