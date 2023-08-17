.class public Lcom/microsoft/identity/common/internal/ui/browser/DefaultBrowserAuthorizationStrategy;
.super Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericOAuth2Strategy:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;",
        "GenericAuthorizationRequest:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;",
        ">",
        "Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy<",
        "TGenericOAuth2Strategy;TGenericAuthorizationRequest;>;"
    }
.end annotation


# instance fields
.field private final mIsRequestFromBroker:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    iput-boolean p4, p0, Lcom/microsoft/identity/common/internal/ui/browser/DefaultBrowserAuthorizationStrategy;->mIsRequestFromBroker:Z

    return-void
.end method


# virtual methods
.method public setIntentFlag(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/DefaultBrowserAuthorizationStrategy;->mIsRequestFromBroker:Z

    if-eqz v0, :cond_0

    const v0, 0x10008000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000000

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method
