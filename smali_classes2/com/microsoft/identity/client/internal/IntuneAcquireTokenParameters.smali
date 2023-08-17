.class public Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters;
.super Lcom/microsoft/identity/client/AcquireTokenParameters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;
    }
.end annotation


# instance fields
.field private mBrokerBrowserSupportEnabled:Z


# direct methods
.method private constructor <init>(Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/identity/client/AcquireTokenParameters;-><init>(Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;)V

    invoke-static {p1}, Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;->access$000(Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters;->mBrokerBrowserSupportEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters;-><init>(Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public isBrokerBrowserSupportEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters;->mBrokerBrowserSupportEnabled:Z

    return v0
.end method
