.class public Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;
.super Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBrokerBrowserSupportEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;->mBrokerBrowserSupportEnabled:Z

    return p0
.end method


# virtual methods
.method public brokerBrowserSupportEnabled(Z)Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;->mBrokerBrowserSupportEnabled:Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/client/AcquireTokenParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;->build()Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/client/TokenParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;->build()Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters;
    .locals 2

    new-instance v0, Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters;-><init>(Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$1;)V

    return-object v0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;->self()Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/client/TokenParameters$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;->self()Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public self()Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;
    .locals 0

    return-object p0
.end method
