.class Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/security/KeyChainAliasCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;->handleOnDeviceCertAuth(Landroid/webkit/ClientCertRequest;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;

.field public final synthetic val$methodTag:Ljava/lang/String;

.field public final synthetic val$request:Landroid/webkit/ClientCertRequest;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;Ljava/lang/String;Landroid/webkit/ClientCertRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler$1;->val$methodTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler$1;->val$request:Landroid/webkit/ClientCertRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler$1;->val$methodTag:Ljava/lang/String;

    const-string v0, "No certificate chosen by user, cancelling the TLS request."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler$1;->val$request:Landroid/webkit/ClientCertRequest;

    invoke-virtual {p1}, Landroid/webkit/ClientCertRequest;->cancel()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler$1;->val$methodTag:Ljava/lang/String;

    const-string v2, "Certificate is chosen by user, proceed with TLS request."

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler$1;->val$request:Landroid/webkit/ClientCertRequest;

    invoke-virtual {v1, p1, v0}, Landroid/webkit/ClientCertRequest;->proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler$1;->val$methodTag:Ljava/lang/String;

    const-string v1, "InterruptedException exception"

    goto :goto_1

    :catch_1
    move-exception p1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ClientCertAuthChallengeHandler$1;->val$methodTag:Ljava/lang/String;

    const-string v1, "KeyChain exception"

    :goto_1
    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/logging/Logger;->errorPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
