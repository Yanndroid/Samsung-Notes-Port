.class public final Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler<",
        "Landroid/webkit/ClientCertRequest;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCEPTABLE_ISSUER:Ljava/lang/String; = "CN=MS-Organization-Access"

.field private static final TAG:Ljava/lang/String; = "ClientCertAuthChallengeHandler"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public handleOnDeviceCertAuth(Landroid/webkit/ClientCertRequest;)Ljava/lang/Void;
    .locals 12
    .param p1    # Landroid/webkit/ClientCertRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":handleOnDeviceCertAuth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ClientCertRequest;->getPrincipals()[Ljava/security/Principal;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CN=MS-Organization-Access"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v1, "Cancelling the TLS request, not respond to TLS challenge triggered by device authentication."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ClientCertRequest;->cancel()V

    return-object v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler$1;

    invoke-direct {v6, p0, v0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;Ljava/lang/String;Landroid/webkit/ClientCertRequest;)V

    invoke-virtual {p1}, Landroid/webkit/ClientCertRequest;->getKeyTypes()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/webkit/ClientCertRequest;->getPrincipals()[Ljava/security/Principal;

    move-result-object v8

    invoke-virtual {p1}, Landroid/webkit/ClientCertRequest;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/webkit/ClientCertRequest;->getPort()I

    move-result v10

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic processChallenge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    check-cast p1, Landroid/webkit/ClientCertRequest;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;->processChallenge(Landroid/webkit/ClientCertRequest;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public processChallenge(Landroid/webkit/ClientCertRequest;)Ljava/lang/Void;
    .locals 0
    .param p1    # Landroid/webkit/ClientCertRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;->handleOnDeviceCertAuth(Landroid/webkit/ClientCertRequest;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
